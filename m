Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C487F5721F0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 19:49:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1389E14B081;
	Tue, 12 Jul 2022 17:49:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 784D414A7C8;
 Tue, 12 Jul 2022 17:49:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 71561A00A0;
 Tue, 12 Jul 2022 17:49:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8343203416406834645=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Tue, 12 Jul 2022 17:49:38 -0000
Message-ID: <165764817844.12861.12961730933166645987@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220712102849.1562-1-christian.koenig@amd.com>
In-Reply-To: <20220712102849.1562-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-buf=3A_revert_=22return_only_unsignaled_fences_in_dma=5Ffence?=
 =?utf-8?q?=5Funwrap=5Ffor=5Feach_v3=22?=
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

--===============8343203416406834645==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dma-buf: revert "return only unsignaled fences in dma_fence_unwrap_for_each v3"
URL   : https://patchwork.freedesktop.org/series/106241/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11876_full -> Patchwork_106241v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106241v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106241v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106241v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_buddy@all:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@drm_buddy@all.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@gem_exec_fair@basic-deadline.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl9/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-skl:          [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl1/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][6] ([i915#6141]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          [FAIL][8] ([i915#6141]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl4/igt@gem_exec_fair@basic-deadline.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl3/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [FAIL][10] ([i915#6141]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-glk5/igt@gem_exec_fair@basic-deadline.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - {shard-rkl}:        [PASS][12] -> [WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_selftest@all:
    - {shard-dg1}:        NOTRUN -> [SKIP][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-dg1-19/igt@kms_selftest@all.html

  
Known issues
------------

  Here are the changes found in Patchwork_106241v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [FAIL][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37]) ([i915#5032]) -> ([PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl9/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl9/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl9/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl7/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl7/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl3/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl3/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl10/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl10/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl9/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl9/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl5/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl1/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl10/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl10/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl10/boot.html
    - shard-apl:          ([PASS][57], [PASS][58], [FAIL][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81]) ([i915#4386]) -> ([PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl1/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl1/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl1/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl1/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl2/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl2/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl2/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl3/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl3/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl3/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl3/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl4/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl4/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl4/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl4/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl6/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl6/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl7/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl7/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl7/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl7/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl1/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl8/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl8/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl8/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl8/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl7/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl7/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl7/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl3/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl1/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl3/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl3/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl1/boot.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][107] -> [SKIP][108] ([i915#658])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb2/igt@feature_discovery@psr2.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb3/igt@feature_discovery@psr2.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([i915#3555] / [i915#5325])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][110] ([i915#4991])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl8/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-skl:          [PASS][111] -> [DMESG-WARN][112] ([i915#1982])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl6/igt@gem_ctx_persistence@heartbeat-close.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl9/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][113] -> [SKIP][114] ([i915#4525]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#6344])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-apl:          [PASS][116] -> [INCOMPLETE][117] ([i915#3778])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl4/igt@gem_exec_endless@dispatch@rcs0.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl3/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][118] -> [FAIL][119] ([i915#2842]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][120] ([i915#2842])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
    - shard-kbl:          [PASS][121] -> [FAIL][122] ([i915#2842]) +5 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][123] -> [DMESG-WARN][124] ([i915#180]) +3 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#2190])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-kbl:          NOTRUN -> [SKIP][126] ([fdo#109271] / [i915#4613])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-tglb:         NOTRUN -> [SKIP][127] ([i915#4613])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#4613]) +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl7/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_softpin@evict-single-offset:
    - shard-kbl:          NOTRUN -> [FAIL][129] ([i915#4171])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglb:         NOTRUN -> [SKIP][130] ([i915#3297])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][131] ([i915#3318])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][132] ([fdo#109289])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gen7_exec_parse@batch-without-end.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271] / [i915#658])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle@rcs0:
    - shard-tglb:         NOTRUN -> [WARN][134] ([i915#2681]) +3 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-kbl:          NOTRUN -> [WARN][135] ([i915#6405])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#109303])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@i915_query@query-topology-known-pci-ids.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][137] ([fdo#111614]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][138] ([i915#3743]) +3 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][139] ([i915#3763])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][140] ([fdo#111615])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][141] ([i915#3689] / [i915#3886])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#3886]) +3 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#3886]) +3 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][144] ([fdo#111615] / [i915#3689])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][145] ([fdo#109271]) +158 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#3886]) +3 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][147] ([i915#3689] / [i915#6095]) +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:
    - shard-tglb:         NOTRUN -> [SKIP][148] ([i915#3689]) +1 similar issue
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglb:         NOTRUN -> [SKIP][149] ([i915#3742])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-tglb:         NOTRUN -> [SKIP][150] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-apl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl4/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-d-gamma:
    - shard-kbl:          NOTRUN -> [SKIP][153] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_color_chamelium@pipe-d-gamma.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][154] ([i915#2105])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:
    - shard-skl:          [PASS][155] -> [INCOMPLETE][156] ([i915#4939])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][157] ([fdo#109274] / [fdo#111825])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [PASS][158] -> [FAIL][159] ([i915#2346])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@2x-busy-flip:
    - shard-tglb:         NOTRUN -> [SKIP][160] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          NOTRUN -> [FAIL][161] ([i915#2122])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][162] ([i915#79])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][163] -> [FAIL][164] ([i915#2122]) +2 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][165] ([i915#3555]) +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][166] ([i915#2672]) +5 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][167] ([i915#2672])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][168] ([fdo#109280] / [fdo#111825]) +6 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
    - shard-glk:          [PASS][169] -> [FAIL][170] ([i915#1888] / [i915#2546])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-apl:          NOTRUN -> [SKIP][171] ([fdo#109271]) +54 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][172] -> [DMESG-WARN][173] ([i915#180]) +4 similar issues
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-iclb:         [PASS][174] -> [FAIL][175] ([i915#1888] / [i915#2546])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-kbl:          NOTRUN -> [SKIP][176] ([fdo#109271]) +109 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [PASS][177] -> [FAIL][178] ([i915#1188]) +1 similar issue
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          NOTRUN -> [FAIL][179] ([i915#1188])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglb:         NOTRUN -> [SKIP][180] ([i915#1839])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][181] ([i915#265])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][182] ([fdo#108145] / [i915#265]) +1 similar issue
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][183] ([i915#5235]) +3 similar issues
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][184] -> [SKIP][185] ([i915#5235]) +2 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-skl:          NOTRUN -> [SKIP][186] ([fdo#109271] / [i915#658]) +1 similar issue
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl10/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-kbl:          NOTRUN -> [SKIP][187] ([fdo#109271] / [i915#658]) +1 similar issue
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][188] -> [SKIP][189] ([fdo#109441]) +2 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-tglb:         NOTRUN -> [FAIL][190] ([i915#132] / [i915#3467])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-iclb:         [PASS][191] -> [DMESG-WARN][192] ([i915#4391])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb8/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb7/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][193] ([fdo#109271] / [i915#2437]) +1 similar issue
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl10/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][194] ([fdo#109271] / [i915#2437])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][195] -> [FAIL][196] ([i915#1542])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl4/igt@perf@blocking.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl2/igt@perf@blocking.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-tglb:         NOTRUN -> [SKIP][197] ([fdo#109291]) +1 similar issue
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@prime_nv_pcopy@test_semaphore.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][198] ([fdo#109271] / [i915#2994])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@sysfs_clients@create.html

  * igt@sysfs_clients@pidname:
    - shard-tglb:         NOTRUN -> [SKIP][199] ([i915#2994])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@sysfs_clients@pidname.html
    - shard-kbl:          NOTRUN -> [SKIP][200] ([fdo#109271] / [i915#2994]) +1 similar issue
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl1/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle:
    - shard-skl:          NOTRUN -> [SKIP][201] ([fdo#109271] / [i915#2994])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@sysfs_clients@recycle.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [FAIL][202] ([i915#6268]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][204] ([i915#2410]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][206] ([i915#5784]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglb5/igt@gem_eio@kms.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][208] ([i915#3070]) -> [PASS][209]
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [SKIP][210] ([i915#4525]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-deadline:
    - {shard-rkl}:        [FAIL][212] ([i915#6141]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html
    - {shard-tglu}:       [FAIL][214] ([i915#6141]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglu-6/igt@gem_exec_fair@basic-deadline.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglu-1/igt@gem_exec_fair@basic-deadline.html
    - shard-tglb:         [FAIL][216] ([i915#6141]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglb2/igt@gem_exec_fair@basic-deadline.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb1/igt@gem_exec_fair@basic-deadline.html
    - shard-iclb:         [FAIL][218] ([i915#6141]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb4/igt@gem_exec_fair@basic-deadline.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - {shard-rkl}:        [FAIL][220] ([i915#2842]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-6/igt@gem_exec_fair@basic-flow@rcs0.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][222] ([i915#2842]) -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-write-read:
    - {shard-rkl}:        [SKIP][224] ([i915#3281]) -> [PASS][225] +10 similar issues
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][226] ([i915#4936]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_partial_pwrite_pread@reads:
    - {shard-rkl}:        [SKIP][228] ([i915#3282]) -> [PASS][229] +10 similar issues
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-2/igt@gem_partial_pwrite_pread@reads.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][230] ([i915#5129]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl1/igt@gem_workarounds@suspend-resume-fd.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@shadow-peek:
    - {shard-rkl}:        [SKIP][232] ([i915#2527]) -> [PASS][233] +3 similar issues
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - {shard-rkl}:        [SKIP][234] ([i915#3012]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][236] ([i915#454]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-glk:          [WARN][238] ([i915#6405]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-glk3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-glk1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@i915_selftest@live@evict:
    - shard-skl:          [INCOMPLETE][240] ([i915#6290]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl6/igt@i915_selftest@live@evict.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl9/igt@i915_selftest@live@evict.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-tglb:         [FAIL][242] ([i915#2521]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglb1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_atomic_transition@modeset-transition-fencing@1x-outputs:
    - shard-tglb:         [INCOMPLETE][244] -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglb3/igt@kms_atomic_transition@modeset-transition-fencing@1x-outputs.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_atomic_transition@modeset-transition-fencing@1x-outputs.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:
    - shard-apl:          [DMESG-WARN][246] ([i915#180]) -> [PASS][247] +2 similar issues
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [FAIL][248] ([i915#2346]) -> [PASS][249]
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - {shard-rkl}:        [SKIP][250] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][251] +5 similar issues
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][252] ([i915#2122]) -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][254] ([i915#180]) -> [PASS][255] +6 similar issues
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
    - {shard-rkl}:        [SKIP][256] ([i915#1849] / [i915#4098]) -> [PASS][257] +13 similar issues
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html

  * igt@kms_pipe_crc_basic@bad-source:
    - {shard-rkl}:        [SKIP][258] ([i915#1845] / [i915#4098]) -> [PASS][259] +22 similar issues
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-1/igt@kms_pipe_crc_basic@bad-source.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html

  * igt@kms_properties@get_properties-sanity-non-atomic:
    - shard-skl:          [DMESG-WARN][260] ([i915#1982]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl9/igt@kms_properties@get_properties-sanity-non-atomic.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl1/igt@kms_properties@get_properties-sanity-non-atomic.html

  * igt@kms_psr@cursor_mmap_cpu:
    - {shard-rkl}:        [SKIP][262] ([i915#1072]) -> [PASS][263]
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-1/igt@kms_psr@cursor_mmap_cpu.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][264] ([fdo#109441]) -> [PASS][265] +3 similar issues
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [SKIP][266] ([i915#5519]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@perf_pmu@module-unload:
    - {shard-dg1}:        [FAIL][268] ([i915#6054]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-dg1-19/igt@perf_pmu@module-unload.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-dg1-19/igt@perf_pmu@module-unload.html

  * igt@sw_sync@sync_merge:
    - {shard-rkl}:        [FAIL][270] ([i915#6140]) -> [PASS][271] +1 similar issue
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-rkl-1/igt@sw_sync@sync_merge.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-5/igt@sw_sync@sync_merge.html

  * igt@sw_sync@sync_merge_same:
    - shard-skl:          [FAIL][272] ([i915#6140]) -> [PASS][273] +1 similar issue
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl6/igt@sw_sync@sync_merge_same.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl9/igt@sw_sync@sync_merge_same.html
    - shard-apl:          [FAIL][274] ([i915#6140]) -> [PASS][275] +2 similar issues
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl6/igt@sw_sync@sync_merge_same.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl1/igt@sw_sync@sync_merge_same.html
    - shard-tglb:         [FAIL][276] ([i915#6140]) -> [PASS][277] +2 similar issues
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglb2/igt@sw_sync@sync_merge_same.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb8/igt@sw_sync@sync_merge_same.html
    - shard-glk:          [FAIL][278] ([i915#6140]) -> [PASS][279] +2 similar issues
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-glk9/igt@sw_sync@sync_merge_same.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-glk3/igt@sw_sync@sync_merge_same.html
    - {shard-tglu}:       [FAIL][280] ([i915#6140]) -> [PASS][281]
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-tglu-3/igt@sw_sync@sync_merge_same.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglu-6/igt@sw_sync@sync_merge_same.html

  * igt@sw_sync@sync_multi_timeline_wait:
    - shard-iclb:         [FAIL][282] ([i915#6140]) -> [PASS][283] +2 similar issues
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb8/igt@sw_sync@sync_multi_timeline_wait.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb7/igt@sw_sync@sync_multi_timeline_wait.html
    - shard-kbl:          [FAIL][284] ([i915#6140]) -> [PASS][285] +2 similar issues
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl1/igt@sw_sync@sync_multi_timeline_wait.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@sw_sync@sync_multi_timeline_wait.html
    - shard-snb:          [FAIL][286] ([i915#6140]) -> [PASS][287] +2 similar issues
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-snb2/igt@sw_sync@sync_multi_timeline_wait.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-snb4/igt@sw_sync@sync_multi_timeline_wait.html

  
#### Warnings ####

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][288] ([i915#2920]) -> [SKIP][289] ([i915#658])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][290] ([fdo#111068] / [i915#658]) -> [SKIP][291] ([i915#2920])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
    - shard-iclb:         [SKIP][292] ([i915#658]) -> [SKIP][293] ([i915#2920]) +1 similar issue
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][294], [FAIL][295], [FAIL][296]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][297], [FAIL][298], [FAIL][299], [FAIL][300], [FAIL][301]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl3/igt@runner@aborted.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/igt@runner@aborted.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/igt@runner@aborted.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/igt@runner@aborted.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/igt@runner@aborted.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl8/igt@runner@aborted.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/igt@runner@aborted.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl8/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][302], [FAIL][303], [FAIL][304], [FAIL][305], [FAIL][306], [FAIL][307], [FAIL][308], [FAIL][309], [FAIL][310]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][311], [FAIL][312], [FAIL][313], [FAIL][314], [FAIL][315], [FAIL][316]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@runner@aborted.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@runner@aborted.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl1/igt@runner@aborted.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@runner@aborted.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@runner@aborted.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl4/igt@runner@aborted.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@runner@aborted.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl7/igt@runner@aborted.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@runner@aborted.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@runner@aborted.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@runner@aborted.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@runner@aborted.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@runner@aborted.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl1/igt@runner@aborted.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1850]: https://gitlab.freedesktop.org/drm/intel/issues/1850
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2232]: https://gitlab.freedesktop.org/drm/intel/issues/2232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4521]: https://gitlab.freedesktop.org/drm/intel/issues/4521
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/intel/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5129]: https://gitlab.freedesktop.org/drm/intel/issues/5129
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5234]: https://gitlab.freedesktop.org/drm/intel/issues/5234
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5264]: https://gitlab.freedesktop.org/drm/intel/issues/5264
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6054]: https://gitlab.freedesktop.org/drm/intel/issues/6054
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#6141]: https://gitlab.freedesktop.org/drm/intel/issues/6141
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6258]: https://gitlab.freedesktop.org/drm/intel/issues/6258
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6290]: https://gitlab.freedesktop.org/drm/intel/issues/6290
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6405]: https://gitlab.freedesktop.org/drm/intel/issues/6405
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11876 -> Patchwork_106241v1

  CI-20190529: 20190529
  CI_DRM_11876: 2305e0d006655ed3797e530403df777699c67ec8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106241v1: 2305e0d006655ed3797e530403df777699c67ec8 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/index.html

--===============8343203416406834645==
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
<tr><td><b>Series:</b></td><td>dma-buf: revert &quot;return only unsignaled=
 fences in dma_fence_unwrap_for_each v3&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/106241/">https://patchwork.freedesktop.org/series/106241/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106241v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106241v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11876_full -&gt; Patchwork_106241v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106241v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_106241v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
106241v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@drm_buddy@all:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@drm_buddy@all.html">SKIP</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@gem_exec_fair@basic-deadlin=
e.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl9/igt@i915_selftest@live@hangchec=
k.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl1/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
241v1/shard-skl5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html">INCOMPLETE</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6141">i915#6141</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1062=
41v1/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-apl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6141">i915#6141</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1062=
41v1/shard-apl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6141">i915#6141</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1062=
41v1/shard-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06241v1/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-dg1-19/igt@kms_selftest@all.html">SK=
IP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106241v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl9/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl9/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1876/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11876/shard-skl7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shar=
d-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11876/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl5/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl5/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11876/shard-skl5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11876/shard-skl4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/=
shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11876/shard-skl3/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl3/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl=
2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11876/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1876/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11876/shard-skl10/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-skl10/boot.html">PA=
SS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5032">i=
915#5032</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106241v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/sh=
ard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106241v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6241v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106241v1/shard-skl5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106241v1/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/sh=
ard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106241v1/shard-skl3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6241v1/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_106241v1/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106241v1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl10/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/=
shard-skl10/boot.html">PASS</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl1/boot.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1876/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11876/shard-apl2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shar=
d-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11876/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl3/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl3/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11876/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_11876/shard-apl4/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl4/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_11876/shard-apl4/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl6/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl=
6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11876/shard-apl7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl7/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1876/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11876/shard-apl8/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shar=
d-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11876/shard-apl8/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106241v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl8/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-a=
pl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_106241v1/shard-apl8/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v=
1/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_106241v1/shard-apl7/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_106241v1/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-ap=
l6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_106241v1/shard-apl4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106241v1/shard-apl4/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl3/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106241v1/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_106241v1/shard-apl3/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl=
3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106241v1/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl2/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_106241v1/shard-apl1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl1/boot.htm=
l">PASS</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard=
-iclb3/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_ccs@ctrl-surf-copy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl8/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl6/igt@gem_ctx_persistence@heartbeat-close.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6241v1/shard-skl9/igt@gem_ctx_persistence@heartbeat-close.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#=
1982</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106241v1/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525"=
>i915#4525</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-apl4/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v=
1/shard-apl3/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i915#3778</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06241v1/shard-tglb7/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@gem_exec_fair@basic-none@vc=
s1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2842">i915#2842</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/=
shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +5 simila=
r issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-apl3/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v=
1/shard-apl4/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl7/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@gem_softpin@evict-single-of=
fset.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4171">i915#4171</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@gem_userptr_blits@vma-merge=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@gen7_exec_parse@batch-with=
out-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@i915_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@i915_pm_rc6_residency@rc6-=
idle@rcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2681">i915#2681</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl1/igt@i915_pm_rc6_residency@rc6-i=
dle@vcs0.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6405">i915#6405</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@i915_query@query-topology-=
known-pci-ids.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109303">fdo#109303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_big_fb@x-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-s=
tride-32bpp-rotate-180-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3763">i915#3763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_ccs@pipe-a-bad-pixel-f=
ormat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@kms_ccs@pipe-a-bad-pixel-fo=
rmat-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@kms_ccs@pipe-a-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_ccs@pipe-a-crc-sprite-=
planes-basic-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@kms_ccs@pipe-a-random-ccs-d=
ata-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +158 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_ccs@pipe-b-crc-primary=
-rotation-180-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-pixel-format-4_tiled_dg2_rc_ccs_cc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_ccs@pipe-d-bad-pixel-f=
ormat-4_tiled_dg2_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_chamelium@hdmi-crc-non=
planar-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl6/igt@kms_chamelium@hdmi-hpd-stor=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl4/igt@kms_color_chamelium@pipe-a-=
ctm-0-75.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-gamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_color_chamelium@pipe-d-=
gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_content_protection@ueve=
nt.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2105">i915#2105</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl7/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106241v1/shard-skl4/igt@kms_cursor_crc@cursor-suspend@pipe-a-edp-1.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4939">i915#4939</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_106241v1/shard-glk9/igt@kms_cursor_legacy@flip-v=
s-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_flip@2x-busy-flip.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
4">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111825">fdo#111825</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl3/igt@kms_flip@flip-vs-expired-vb=
lank@a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl3/igt@kms_flip@flip-vs-expired-vb=
lank@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_106241v1/shard-skl2/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-iclb4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +6 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb=
-plflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106241v1/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p=
-primscrn-shrfb-plflip-blt.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1888">i915#1888</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@kms_frontbuffer_tracking@fb=
c-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +54 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06241v1/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb4/igt@kms_frontbuffer_tra=
cking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_frontbuffer_tracking@ps=
r-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +109 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6241v1/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</=
a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@=
pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_multipipe_modeset@basi=
c-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_plane_alpha_blend@pipe-=
a-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@kms_plane_alpha_blend@pipe-=
c-constant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-c-=
edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_plane_scaling@planes-u=
pscale-20x20-downscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb6/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-iclb2/igt@kms_plane_scal=
ing@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl10/igt@kms_psr2_sf@cursor-plane-m=
ove-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-kbl4/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1=
/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_psr@psr2_no_drrs.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/132">=
i915#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
467">i915#3467</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb8/igt@kms_rotation_crc@multiplane-rotation-cropping=
-bottom.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_106241v1/shard-iclb7/igt@kms_rotation_crc@multiplane-rotati=
on-cropping-bottom.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/4391">i915#4391</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl10/igt@kms_writeback@writeback-in=
valid-parameters.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@kms_writeback@writeback-pix=
el-formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl4/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-skl2/igt@=
perf@blocking.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@prime_nv_pcopy@test_semaph=
ore.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109291">fdo#109291</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-apl2/igt@sysfs_clients@create.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2994"=
>i915#2994</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_106241v1/shard-kbl1/igt@sysfs_clients@pidname.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-skl6/igt@sysfs_clients@recycle.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106241v1/shard-tglb2/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-1/igt@gem_ctx_persistence@many-contexts.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#=
2410</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106241v1/shard-rkl-5/igt@gem_ctx_persistence@many-contexts.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-tglb5/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-tglb=
7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10624=
1v1/shard-iclb8/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb8/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106241v1/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6141">i915#6141</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
241v1/shard-rkl-5/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-tglu-6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6141">i915#6141<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6241v1/shard-tglu-1/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-tglb2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6141">i915#6141</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
241v1/shard-tglb1/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-iclb4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6141">i915#6141</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
241v1/shard-iclb6/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-6/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06241v1/shard-rkl-1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106241v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-2/igt@gem_exec_reloc@basic-write-read.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#32=
81</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106241v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html">PASS</a> +1=
0 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936"=
>i915#4936</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_106241v1/shard-dg1-15/igt@gem_lmem_swapping@smem-oom@lmem0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-2/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#328=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106241v1/shard-rkl-5/igt@gem_partial_pwrite_pread@reads.html">PASS</a> +10 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl1/igt@gem_workarounds@suspend-resume-fd.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5129">=
i915#5129</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_106241v1/shard-skl4/igt@gem_workarounds@suspend-resume-fd.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#2527</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106=
241v1/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html">PASS</a> +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-1/igt@i915_pm_backlight@fade_with_suspend.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i91=
5#3012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106241v1/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/sh=
ard-iclb4/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-glk3/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6405">i915=
#6405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_106241v1/shard-glk1/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl6/igt@i915_selftest@live@evict.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6290">i915#6290=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
06241v1/shard-skl9/igt@i915_selftest@live@evict.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-tglb1/igt@kms_async_flips@alternate-sync-async-flip@pip=
e-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-tglb3/igt@kms_async_flips@alternate-=
sync-async-flip@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-fencing@1x-outputs:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-tglb3/igt@kms_atomic_transition@modeset-transition-fenc=
ing@1x-outputs.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_106241v1/shard-tglb2/igt@kms_atomic_transition=
@modeset-transition-fencing@1x-outputs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-a-dp-1.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_106241v1/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-a-=
dp-1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106241v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-curso=
r@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-un=
tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-rkl-6/igt@kms_draw_crc@dra=
w-method-xrgb8888-mmap-gtt-untiled.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-=
hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106241v1/shard-glk5/igt@kms_flip@2x-plain-flip-fb-rec=
reate@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_106241v1/shard-kbl1/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-dp1.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_106241v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bc-shrfb-scaledprimary.html">PASS</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@bad-source:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-1/igt@kms_pipe_crc_basic@bad-source.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i91=
5#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_106241v1/shard-rkl-6/igt@kms_pipe_crc_basic@bad-source.html">PASS</a> =
+22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-non-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-skl9/igt@kms_properties@get_properties-sanity-non-atomi=
c.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_106241v1/shard-skl1/igt@kms_properties@get_properties=
-sanity-non-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-1/igt@kms_psr@cursor_mmap_cpu.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v=
1/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10624=
1v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_106241v1/shard-tglb1/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-dg1-19/igt@perf_pmu@module-unload.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6054">i915#6054</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v=
1/shard-dg1-19/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-rkl-1/igt@sw_sync@sync_merge.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#6140</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/sha=
rd-rkl-5/igt@sw_sync@sync_merge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_merge_same:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-skl6/igt@sw_sync@sync_merge_same.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#6140</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/=
shard-skl9/igt@sw_sync@sync_merge_same.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-apl6/igt@sw_sync@sync_merge_same.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#6140</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/=
shard-apl1/igt@sw_sync@sync_merge_same.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-tglb2/igt@sw_sync@sync_merge_same.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#6140</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1=
/shard-tglb8/igt@sw_sync@sync_merge_same.html">PASS</a> +2 similar issues</=
p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-glk9/igt@sw_sync@sync_merge_same.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#6140</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/=
shard-glk3/igt@sw_sync@sync_merge_same.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-tglu-3/igt@sw_sync@sync_merge_same.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#6140</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v=
1/shard-tglu-6/igt@sw_sync@sync_merge_same.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_multi_timeline_wait:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-iclb8/igt@sw_sync@sync_multi_timeline_wait.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#61=
40</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_106241v1/shard-iclb7/igt@sw_sync@sync_multi_timeline_wait.html">PASS</a> +=
2 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-kbl1/igt@sw_sync@sync_multi_timeline_wait.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#614=
0</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106241v1/shard-kbl6/igt@sw_sync@sync_multi_timeline_wait.html">PASS</a> +2 =
similar issues</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11876/shard-snb2/igt@sw_sync@sync_multi_timeline_wait.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6140">i915#614=
0</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
106241v1/shard-snb4/igt@sw_sync@sync_multi_timeline_wait.html">PASS</a> +2 =
similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exce=
ed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_106241v1/shard-iclb3/igt@kms_psr2_sf@cursor-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_106241v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_106241v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-=
continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11876/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) =
-&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241=
v1/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_106241v1/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-apl6/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_106241v1/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#43=
12</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i=
915#5257</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11876/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11876/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11876/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1876/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11876/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1187=
6/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt;=
 (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/sh=
ard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
6241v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_106241v1/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106241v1/shard-kbl6/igt@ru=
nner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11876 -&gt; Patchwork_106241v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11876: 2305e0d006655ed3797e530403df777699c67ec8 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106241v1: 2305e0d006655ed3797e530403df777699c67ec8 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8343203416406834645==--
