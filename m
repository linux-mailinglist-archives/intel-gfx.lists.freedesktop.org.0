Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFC9818371
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 09:36:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934AC10E427;
	Tue, 19 Dec 2023 08:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10F5D10E427;
 Tue, 19 Dec 2023 08:36:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED509AADD5;
 Tue, 19 Dec 2023 08:36:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5625181881223625106=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EIGT=3A_success_for_drm/i915/hdcp=3A_Fail_Repea?=
 =?utf-8?q?ter_authentication_if_Type1_device_not_present_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Tue, 19 Dec 2023 08:36:03 -0000
Message-ID: <170297496392.17580.3376539616787493012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231206093916.1733863-1-suraj.kandpal@intel.com>
In-Reply-To: <20231206093916.1733863-1-suraj.kandpal@intel.com>
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

--===============5625181881223625106==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Fail Repeater authentication if Type1 device not present (rev5)
URL   : https://patchwork.freedesktop.org/series/127414/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14041_full -> Patchwork_127414v5_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (7 -> 9)
------------------------------

  Additional (2): shard-snb-0 shard-glk-0 

Known issues
------------

  Here are the changes found in Patchwork_127414v5_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [FAIL][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk3/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk3/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk1/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk1/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk1/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk9/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk9/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk8/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk8/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk2/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk4/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk9/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk9/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-rkl:          ([PASS][51], [PASS][52], [PASS][53], [PASS][54], [FAIL][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75]) ([i915#8293]) -> ([PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-7/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-7/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-7/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-6/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-6/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-5/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-5/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-5/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-5/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-4/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-4/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-2/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-2/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-2/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-1/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-1/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-1/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-1/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-1/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-2/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-3/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-3/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-3/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-4/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-4/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-4/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@drm_fdinfo@busy@bcs0:
    - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#8414]) +5 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@drm_fdinfo@busy@bcs0.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][101] -> [FAIL][102] ([i915#7742])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@gem_bad_reloc@negative-reloc-bltcopy:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#3281]) +7 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_bad_reloc@negative-reloc-bltcopy.html

  * igt@gem_basic@multigpu-create-close:
    - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#7697])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_basic@multigpu-create-close.html

  * igt@gem_create@create-ext-set-pat:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#8562])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [PASS][106] -> [FAIL][107] ([i915#9561])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_ctx_param@set-priority-not-supported:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([fdo#109314])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_ctx_param@set-priority-not-supported.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#8555])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@heartbeat-hostile:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#8555])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-hostile.html

  * igt@gem_exec_balancer@bonded-pair:
    - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#4771])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@bonded-semaphore:
    - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#4812]) +2 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_exec_balancer@bonded-semaphore.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#4525])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-share:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#3539] / [i915#4852]) +4 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_fair@basic-none-share.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][115] -> [FAIL][116] ([i915#2842]) +2 other tests fail
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][117] -> [FAIL][118] ([i915#2842])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglu:         [PASS][119] -> [FAIL][120] ([i915#2842]) +2 other tests fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#3539])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_fair@basic-throttle.html

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3281]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-gtt.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3281]) +3 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4537] / [i915#4812])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@preempt-queue-chain:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#4537] / [i915#4812])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_exec_schedule@preempt-queue-chain.html

  * igt@gem_exec_suspend@basic-s4-devices@smem:
    - shard-tglu:         [PASS][126] -> [ABORT][127] ([i915#7975] / [i915#8213])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices@smem.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
    - shard-rkl:          NOTRUN -> [ABORT][128] ([i915#7975] / [i915#8213])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gem_exec_suspend@basic-s4-devices@smem.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#4860]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_lmem_swapping@basic:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#4613])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-glk:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#4613])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk9/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_media_fill@media-fill:
    - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#8289])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap@big-bo:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#4083]) +1 other test skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#4083]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3282]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#3282])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#4270]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#4270]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_readwrite@read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#3282]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_readwrite@read-write.html

  * igt@gem_render_copy@y-tiled-ccs-to-linear:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#5190]) +7 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-linear.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#8428]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#4885])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#4077]) +8 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_tiled_pread_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#4079]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@unsync-unmap:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#3297]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap.html

  * igt@gen3_render_tiledx_blits:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([fdo#109289]) +4 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gen3_render_tiledx_blits.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#2856])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#2856]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#2527])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_module_load@load:
    - shard-mtlp:         NOTRUN -> [SKIP][150] ([i915#6227])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-tglu:         [PASS][151] -> [INCOMPLETE][152] ([i915#9200])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@gem-evict-pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#4077]) +2 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@i915_pm_rpm@gem-evict-pwrite.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([fdo#109293] / [fdo#109506])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][155] ([i915#8585])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [PASS][156] -> [FAIL][157] ([fdo#103375])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@bad-pitch-65536:
    - shard-dg1:          [PASS][158] -> [DMESG-WARN][159] ([i915#4423])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg1-16/igt@kms_addfb_basic@bad-pitch-65536.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-13/igt@kms_addfb_basic@bad-pitch-65536.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#8709]) +3 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html

  * igt@kms_async_flips@crc@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][161] ([i915#8247]) +3 other tests fail
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_async_flips@crc@pipe-a-dp-4.html

  * igt@kms_async_flips@crc@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [DMESG-FAIL][162] ([i915#8561])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_async_flips@crc@pipe-c-edp-1.html

  * igt@kms_async_flips@crc@pipe-d-edp-1:
    - shard-mtlp:         NOTRUN -> [FAIL][163] ([i915#8247]) +2 other tests fail
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_async_flips@crc@pipe-d-edp-1.html

  * igt@kms_async_flips@test-cursor:
    - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#6229])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_async_flips@test-cursor.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#3555])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([fdo#111614]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#5286])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([fdo#111614]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#6187])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([fdo#111615]) +4 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglu:         [PASS][171] -> [FAIL][172] ([i915#3743])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#4538] / [i915#5190]) +4 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#2705])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#5354] / [i915#6095]) +23 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#5354] / [i915#6095]) +2 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-4-tiled-mtl-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#5354]) +4 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_ccs@pipe-d-bad-aux-stride-4-tiled-mtl-mc-ccs.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([fdo#111827])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_color@ctm-green-to-red:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([fdo#111827])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_chamelium_color@ctm-green-to-red.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#7828]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
    - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#7828]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#7828])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode.html

  * igt@kms_content_protection@atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#6944])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][184] ([i915#7173])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#3299])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#3299])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#7118])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#3359])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#3359])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#3555] / [i915#8814]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#3359])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#8814])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#4103] / [i915#4213] / [i915#5608])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#9809]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([fdo#109274] / [i915#5354]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#9067])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#9723])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-12/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#3804])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#8812])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#3840])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_feature_discovery@chamelium:
    - shard-mtlp:         NOTRUN -> [SKIP][201] ([i915#4854])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_feature_discovery@chamelium.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([fdo#109274]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([fdo#111825])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#3637]) +4 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [PASS][205] -> [INCOMPLETE][206] ([i915#4839])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-snb7/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#2672])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#2672])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#3555] / [i915#8810])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#2672])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#5354]) +40 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [PASS][212] -> [SKIP][213] ([fdo#109271]) +9 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([fdo#111825] / [i915#1825]) +6 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#8708]) +13 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-glk:          NOTRUN -> [SKIP][216] ([fdo#109271]) +11 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk9/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@plane-fbc-rte:
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#9653])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_frontbuffer_tracking@plane-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#3023]) +4 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#8708]) +8 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#1825]) +10 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#3458]) +8 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#3555] / [i915#8228])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#4816])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#6301])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - shard-snb:          NOTRUN -> [SKIP][225] ([fdo#109271])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-snb7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][226] ([i915#8292])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][227] ([i915#9423]) +7 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-6/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-c-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#5176]) +3 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-c-edp-1.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#9423]) +5 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#5176] / [i915#9423]) +1 other test skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#9423]) +11 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-17/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#5235]) +11 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#5235]) +15 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-18/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#5235]) +7 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-mtlp:         NOTRUN -> [FAIL][235] ([i915#9298])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][236] ([i915#9340])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][237] -> [SKIP][238] ([i915#9519])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#9519])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#6524] / [i915#6805])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#6524])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#9683])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#9683])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#4348])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#4235])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-rkl:          [PASS][246] -> [INCOMPLETE][247] ([i915#8875] / [i915#9475] / [i915#9569])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-mtlp:         NOTRUN -> [SKIP][248] ([i915#5289])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#4235] / [i915#5190])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][250] ([i915#4235])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#3555])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#3555]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#3555] / [i915#8809])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-dg2:          NOTRUN -> [SKIP][254] ([i915#8623])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
    - shard-mtlp:         [PASS][255] -> [FAIL][256] ([i915#9196])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
    - shard-tglu:         [PASS][257] -> [FAIL][258] ([i915#9196])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:
    - shard-dg1:          [PASS][259] -> [FAIL][260] ([i915#9196])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html

  * igt@kms_vrr@flipline:
    - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#3555] / [i915#8808])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-fb-id-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][262] ([i915#2437] / [i915#9412])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_writeback@writeback-fb-id-xrgb2101010.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][263] -> [FAIL][264] ([i915#4349]) +3 other tests fail
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@event-wait@rcs0:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([fdo#112283])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@perf_pmu@event-wait@rcs0.html

  * igt@perf_pmu@faulting-read@gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][266] ([i915#8440])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@perf_pmu@faulting-read@gtt.html

  * igt@prime_vgem@basic-fence-mmap:
    - shard-dg2:          NOTRUN -> [SKIP][267] ([i915#3708] / [i915#4077])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@fence-write-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#3708]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@invalid-wait-zero-handles:
    - shard-dg2:          NOTRUN -> [FAIL][269] ([i915#9781])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@syncobj_timeline@invalid-wait-zero-handles.html

  * igt@v3d/v3d_get_param@get-bad-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#2575]) +6 other tests skip
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@v3d/v3d_get_param@get-bad-flags.html

  * igt@v3d/v3d_submit_cl@bad-bo:
    - shard-rkl:          NOTRUN -> [SKIP][271] ([fdo#109315]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@v3d/v3d_submit_cl@bad-bo.html

  * igt@v3d/v3d_submit_cl@multisync-out-syncs:
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#2575]) +6 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@v3d/v3d_submit_cl@multisync-out-syncs.html

  * igt@vc4/vc4_tiling@get-bad-flags:
    - shard-mtlp:         NOTRUN -> [SKIP][273] ([i915#7711]) +2 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@vc4/vc4_tiling@get-bad-flags.html

  * igt@vc4/vc4_tiling@get-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#7711]) +5 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@vc4/vc4_tiling@get-bad-handle.html

  
#### Possible fixes ####

  * igt@drm_fdinfo@idle@rcs0:
    - shard-rkl:          [FAIL][275] ([i915#7742]) -> [PASS][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglu:         [FAIL][277] ([i915#6268]) -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-rkl:          [FAIL][279] ([i915#2842]) -> [PASS][280] +2 other tests pass
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/igt@gem_exec_fair@basic-none@vecs0.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [INCOMPLETE][281] ([i915#9275]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          [ABORT][283] ([i915#7975] / [i915#8213]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [INCOMPLETE][285] ([i915#5493]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_softpin@allocator-evict@rcs0:
    - shard-glk:          [INCOMPLETE][287] -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk6/igt@gem_softpin@allocator-evict@rcs0.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk9/igt@gem_softpin@allocator-evict@rcs0.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-dg2:          [INCOMPLETE][289] ([i915#9142]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [FAIL][291] ([i915#5138]) -> [PASS][292]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu:         [FAIL][293] ([i915#3743]) -> [PASS][294]
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-snb:          [SKIP][295] ([fdo#109271] / [fdo#111767]) -> [PASS][296]
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-snb5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-snb:          [SKIP][297] ([fdo#109271]) -> [PASS][298] +5 other tests pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@single-bo@all-pipes:
    - shard-mtlp:         [DMESG-WARN][299] ([i915#2017]) -> [PASS][300] +1 other test pass
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pipes.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [FAIL][301] ([i915#9295]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][303] ([i915#9519]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [FAIL][305] ([i915#7484]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf_pmu@busy-idle-check-all@vecs0:
    - shard-dg1:          [FAIL][307] ([i915#4349]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg1-18/igt@perf_pmu@busy-idle-check-all@vecs0.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-15/igt@perf_pmu@busy-idle-check-all@vecs0.html

  
#### Warnings ####

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          [INCOMPLETE][309] ([i915#9408] / [i915#9618]) -> [ABORT][310] ([i915#9618])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-dg1:          [INCOMPLETE][311] ([i915#9849]) -> [INCOMPLETE][312] ([i915#9820] / [i915#9849])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-18/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_content_protection@uevent:
    - shard-snb:          [SKIP][313] ([fdo#109271]) -> [INCOMPLETE][314] ([i915#8816])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-snb4/igt@kms_content_protection@uevent.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-snb7/igt@kms_content_protection@uevent.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
    - shard-dg1:          [SKIP][315] ([fdo#111825]) -> [SKIP][316] ([fdo#111825] / [i915#4423])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          [SKIP][317] ([i915#3361]) -> [FAIL][318] ([i915#9295])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          [INCOMPLETE][319] ([i915#5493]) -> [CRASH][320] ([i915#9351])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-5/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109293]: https://bugs.freedesktop.org/show_bug.cgi?id=109293
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4348]: https://gitlab.freedesktop.org/drm/intel/issues/4348
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/intel/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6229]: https://gitlab.freedesktop.org/drm/intel/issues/6229
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7742]: https://gitlab.freedesktop.org/drm/intel/issues/7742
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8440]: https://gitlab.freedesktop.org/drm/intel/issues/8440
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
  [i915#8808]: https://gitlab.freedesktop.org/drm/intel/issues/8808
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
  [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
  [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
  [i915#8816]: https://gitlab.freedesktop.org/drm/intel/issues/8816
  [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9142]: https://gitlab.freedesktop.org/drm/intel/issues/9142
  [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
  [i915#9200]: https://gitlab.freedesktop.org/drm/intel/issues/9200
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
  [i915#9298]: https://gitlab.freedesktop.org/drm/intel/issues/9298
  [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
  [i915#9351]: https://gitlab.freedesktop.org/drm/intel/issues/9351
  [i915#9408]: https://gitlab.freedesktop.org/drm/intel/issues/9408
  [i915#9412]: https://gitlab.freedesktop.org/drm/intel/issues/9412
  [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
  [i915#9475]: https://gitlab.freedesktop.org/drm/intel/issues/9475
  [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
  [i915#9561]: https://gitlab.freedesktop.org/drm/intel/issues/9561
  [i915#9569]: https://gitlab.freedesktop.org/drm/intel/issues/9569
  [i915#9618]: https://gitlab.freedesktop.org/drm/intel/issues/9618
  [i915#9653]: https://gitlab.freedesktop.org/drm/intel/issues/9653
  [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
  [i915#9683]: https://gitlab.freedesktop.org/drm/intel/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
  [i915#9808]: https://gitlab.freedesktop.org/drm/intel/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
  [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
  [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
  [i915#9906]: https://gitlab.freedesktop.org/drm/intel/issues/9906


Build changes
-------------

  * Linux: CI_DRM_14041 -> Patchwork_127414v5

  CI-20190529: 20190529
  CI_DRM_14041: 9c765da135371aa65d3f40c7effbea264300ea98 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7647: c5db51a88823962e79d41cff10fe1bdd8ea92d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127414v5: 9c765da135371aa65d3f40c7effbea264300ea98 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/index.html

--===============5625181881223625106==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Fail Repeater authentication =
if Type1 device not present (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/127414/">https://patchwork.freedesktop.org/series/127414/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127414v5/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_127414v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14041_full -&gt; Patchwork_127414v=
5_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (7 -&gt; 9)</h2>
<p>Additional (2): shard-snb-0 shard-glk-0 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127414v5_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14041/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk3/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
14041/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_14041/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/sha=
rd-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14041/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk1/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk9/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_14041/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14041/shard-glk8/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk8/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041=
/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_14041/shard-glk7/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-gl=
k6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
4041/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_14041/shard-glk5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-glk4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shar=
d-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_14041/shard-glk4/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk1/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
414v5/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127414v5/shard-glk2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127414v5/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/sh=
ard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127414v5/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7414v5/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127414v5/shard-glk4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127414v5/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127414v5/shard-glk6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7414v5/shard-glk7/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_127414v5/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127414v5/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_127414v5/shard-glk9/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-glk9/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293=
">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-rkl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_14041/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_14041/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_14041/shard-rkl-6/boot.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-6/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_140=
41/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_14041/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/sha=
rd-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_14041/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-4/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-3/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_14041/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_14041/shard-rkl-2/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-2/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1404=
1/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_14041/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shar=
d-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_14041/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_14041/shard-rkl-1/boot.html">PASS</a>) =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127414v5/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rk=
l-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127414v5/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12741=
4v5/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127414v5/shard-rkl-3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5=
/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127414v5/shard-rkl-4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127414v5/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shar=
d-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127414v5/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27414v5/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl=
-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127414v5/shard-rkl-7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414=
v5/shard-rkl-7/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_fdinfo@busy@bcs0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@drm_fdinfo@busy@bcs0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8414=
">i915#8414</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127414v5/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742"=
>i915#7742</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-bltcopy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_bad_reloc@negative-re=
loc-bltcopy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard=
-dg2-11/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/9561">i915#9561</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_ctx_param@set-priorit=
y-not-supported.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109314">fdo#109314</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_ctx_persistence@heart=
beat-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_ctx_persistence@heart=
beat-hostile.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_balancer@bonded-=
pair.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_exec_balancer@bonded-=
semaphore.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4812">i915#4812</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gem_exec_balancer@parallel=
-ordering.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_fair@basic-none-=
share.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4852">i915#4852</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v=
5/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 oth=
er tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7414v5/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-tglu-10/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127414v5/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_fair@basic-throt=
tle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gem_exec_reloc@basic-cpu-g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_reloc@basic-gtt.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-chain:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_exec_schedule@preempt=
-queue-chain.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@smem:</p>
<ul>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_14041/shard-tglu-3/igt@gem_exec_suspend@basic-s4-devices@smem.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_127414v5/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975">=
i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
8213">i915#8213</a>)</p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gem_exec_suspend@basic-s4-d=
evices@smem.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/8213">i915#8213</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_fence_thrash@bo-write=
-verify-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_lmem_swapping@basic.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-glk9/igt@gem_lmem_swapping@verify-ra=
ndom-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_media_fill@media-fill=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/8289">i915#8289</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_mmap@big-bo.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4083">i91=
5#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_mmap_wc@write-gtt-rea=
d-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4083">i915#4083</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_pread@snoop.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i91=
5#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_pxp@display-protected=
-crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_pxp@verify-pxp-stale-=
buf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_readwrite@read-write.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gem_render_copy@y-tiled-c=
cs-to-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/5190">i915#5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_render_copy@y-tiled-c=
cs-to-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@gem_softpin@evict-snoop-i=
nterruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_tiled_partial_pwrite_=
pread@writes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4077">i915#4077</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
79">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_userptr_blits@unsync-=
unmap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gen3_render_tiledx_blits.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09289">fdo#109289</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@i915_module_load@load.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/622=
7">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_127414v5/shard-tglu-10/igt@i915_module_load@reload-with-fault-inje=
ction.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/9200">i915#9200</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-evict-pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@i915_pm_rpm@gem-evict-pwr=
ite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109293">fdo#109293</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109506">fdo#109506</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@i915_pm_rpm@gem-idle.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8585">i915#8585</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7414v5/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-65536:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg1-16/igt@kms_addfb_basic@bad-pitch-65536.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1274=
14v5/shard-dg1-13/igt@kms_addfb_basic@bad-pitch-65536.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-r=
c-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-5/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/8709">i915#8709</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_async_flips@crc@pipe-=
a-dp-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/8247">i915#8247</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_async_flips@crc@pipe-=
c-edp-1.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8561">i915#8561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_async_flips@crc@pipe-=
d-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8247">i915#8247</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_async_flips@test-curs=
or.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6229">i915#6229</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_big_fb@4-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_big_fb@4-tiled-addfb-s=
ize-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_big_fb@x-tiled-16bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111614">fdo#111614</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_big_fb@y-tiled-addfb-=
size-offset-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_big_fb@y-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +4 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-tglu-10/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rota=
te-180-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-7/igt@kms_big_fb@y-tile=
d-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_big_fb@yf-tiled-8bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_big_joiner@2x-modeset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2705">i915#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_ccs@pipe-a-random-ccs=
-data-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/6095">i915#6095</a>) +23 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4-tiled-dg2-rc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-4-tiled-dg2-rc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_ccs@pipe-d-bad-aux-str=
ide-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_chamelium_color@ctm-0=
-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-green-to-red:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_chamelium_color@ctm-gr=
een-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_chamelium_edid@vga-ed=
id-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_chamelium_hpd@dp-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-w=
ith-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_content_protection@at=
omic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_content_protection@at=
omic@pipe-a-dp-4.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_content_protection@dp=
-mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_content_protection@le=
gacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/8814">i915#8814</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_cursor_crc@cursor-rap=
id-movement-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_cursor_crc@cursor-sli=
ding-256x85.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/4213">i915#4213</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_cursor_legacy@cursorb=
-vs-flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/9809">i915#9809</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_cursor_legacy@cursorb=
-vs-flipa-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg1-12/igt@kms_dirtyfb@fbc-dirtyfb-i=
octl@a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_draw_crc@draw-method-=
mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_flip@2x-flip-vs-modes=
et-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109274">fdo#109274</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_flip@2x-flip-vs-pannin=
g-vs-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3637">i915#3637</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-snb7/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
414v5/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4839">i915#48=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#26=
72</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-=
64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8810">i915=
#8810</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a=
-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_flip_scaled_crc@flip-=
64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +40 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_127414v5/shard-snb2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +9 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +6 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +13 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-glk9/igt@kms_frontbuffer_tracking@fb=
cpsr-tiling-linear.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_frontbuffer_tracking@=
plane-fbc-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/9653">i915#9653</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3023">i915#3023</a>) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +8 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +10 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/3458">i915#3458</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_panel_fitting@legacy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-snb7/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_plane_scaling@intel-m=
ax-src-size@pipe-a-dp-4.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe=
-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-6/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) =
+7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-=
c-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-pixel-format@pipe-c-edp-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hd=
mi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +5 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-3/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423<=
/a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg1-17/igt@kms_plane_scaling@plane-u=
pscale-20x20-with-rotation@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/9423">i915#9423</a>) +11 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-b-dp-4.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg1-18/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-c-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +15 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-=
hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-1/igt@kms_plane_scaling@planes-u=
nity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +7=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_pm_dc@dc6-psr.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9298">i=
915#9298</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9340=
">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
27414v5/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">i915#9519=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-s=
tress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/9519">i915#9519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/6524">i915#6524</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6805">i915#6805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_psr2_sf@overlay-plane-=
move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_psr2_sf@plane-move-sf=
-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/4348">i915#4348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127414v5/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x=
-0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/8875">i915#8875</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/9475">i915#9475</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/9569">i915#9569</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4235">i915#4235</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_rotation_crc@sprite-r=
otation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@kms_scaling_modes@scaling-=
mode-full.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-ed=
p-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_127414v5/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pi=
pe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127414v5/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak=
@pipe-d-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg1-15/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hd=
mi-a-4.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127414v5/shard-dg1-19/igt@kms_universal_plane@cursor-fb-leak=
@pipe-d-hdmi-a-4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9196">i915#9196</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@kms_vrr@flipline.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i9=
15#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/88=
08">i915#8808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@kms_writeback@writeback-f=
b-id-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2437">i915#2437</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9412">i915#9412</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127=
414v5/shard-dg2-10/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4349</a>=
) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@event-wait@rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@perf_pmu@event-wait@rcs0.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
12283">fdo#112283</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@faulting-read@gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@perf_pmu@faulting-read@gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8440">i915#8440</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@prime_vgem@basic-fence-mm=
ap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@prime_vgem@fence-write-ha=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@syncobj_timeline@invalid-=
wait-zero-handles.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/9781">i915#9781</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@get-bad-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-8/igt@v3d/v3d_get_param@get-bad=
-flags.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-bo:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-rkl-7/igt@v3d/v3d_submit_cl@bad-bo.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9315">fdo#109315</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@multisync-out-syncs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-10/igt@v3d/v3d_submit_cl@multisy=
nc-out-syncs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-flags:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-mtlp-2/igt@vc4/vc4_tiling@get-bad-fl=
ags.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7711">i915#7711</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_tiling@get-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_127414v5/shard-dg2-11/igt@vc4/vc4_tiling@get-bad-ha=
ndle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/7711">i915#7711</a>) +5 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_fdinfo@idle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-2/igt@drm_fdinfo@idle@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/7742">i915#7742</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/=
shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#62=
68</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127414v5/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-3/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127414v5/shard-rkl-6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> +2 o=
ther tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg2-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9275">i9=
15#9275</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_127414v5/shard-dg2-10/igt@gem_exec_suspend@basic-s0@smem.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html"=
>ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7975=
">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8213">i915#8213</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_127414v5/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices=
@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5493">i915=
#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_127414v5/shard-mtlp-5/igt@gem_mmap_offset@clear@smem0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-glk6/igt@gem_softpin@allocator-evict@rcs0.html">INCOMPL=
ETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_127414v5/shard-glk9/igt@gem_softpin@allocator-evict@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/914=
2">i915#9142</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_127414v5/shard-dg2-11/igt@i915_pm_rpm@system-suspend-execbuf.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/5138">i915#5138</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_127414v5/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-tglu-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-tglu-4/igt@kms_big_fb@y-t=
iled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-snb5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111767">fdo#111767</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127414v5/shard-snb7/igt@kms_cursor_legacy@2x-flip-vs-c=
ursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-tran=
sitions-varying-size.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-snb7/igt@kms_cursor_leg=
acy@cursorb-vs-flipa-atomic-transitions-varying-size.html">PASS</a> +5 othe=
r tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@single-bo@all-pipes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-mtlp-4/igt@kms_cursor_legacy@single-bo@all-pipes.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2017">i915#2017</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_127414v5/shard-mtlp-1/igt@kms_cursor_legacy@single-bo@all-pip=
es.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-tglu-7/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/9295">i915#9295</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/=
shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9519">=
i915#9519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_127414v5/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
7414v5/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg1-18/igt@perf_pmu@busy-idle-check-all@vecs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i91=
5#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_127414v5/shard-dg1-15/igt@perf_pmu@busy-idle-check-all@vecs0.html">PAS=
S</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/9408"=
>i915#9408</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/9618">i915#9618</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_127414v5/shard-dg1-13/igt@device_reset@unbind-reset-rebind.h=
tml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9618">i915#9618</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/9849">i915#9849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_127414v5/shard-dg1-18/igt@i915_module_load@reload-with=
-fault-injection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/9820">i915#9820</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/9849">i915#9849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-snb4/igt@kms_content_protection@uevent.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
127414v5/shard-snb7/igt@kms_content_protection@uevent.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8816">i915#8816=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-=
cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111825">fdo#111825</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg1-13/igt@kms_frontbuffe=
r_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D=
"https://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3361">i915#3361</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v5/sha=
rd-rkl-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/9295">i915#9295</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_14041/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_=
limit-smem.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_127414v5/shard-dg2-5/igt@prime_mmap@test_ape=
rture_limit@test_aperture_limit-smem.html">CRASH</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/9351">i915#9351</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14041 -&gt; Patchwork_127414v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14041: 9c765da135371aa65d3f40c7effbea264300ea98 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7647: c5db51a88823962e79d41cff10fe1bdd8ea92d89 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127414v5: 9c765da135371aa65d3f40c7effbea264300ea98 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============5625181881223625106==--
