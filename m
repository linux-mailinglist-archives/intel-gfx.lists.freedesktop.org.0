Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D412D5611E6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 07:48:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EDBC10F61C;
	Thu, 30 Jun 2022 05:48:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4B26010F61A;
 Thu, 30 Jun 2022 05:48:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 42161A66C8;
 Thu, 30 Jun 2022 05:48:44 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4790023535242457514=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Thu, 30 Jun 2022 05:48:44 -0000
Message-ID: <165656812424.26513.14051107208819838182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1656516220.git.mchehab@kernel.org>
In-Reply-To: <cover.1656516220.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRml4?=
 =?utf-8?q?_TLB_invalidate_issues_with_Broadwell_=28rev2=29?=
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

--===============4790023535242457514==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fix TLB invalidate issues with Broadwell (rev2)
URL   : https://patchwork.freedesktop.org/series/105167/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11825_full -> Patchwork_105167v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105167v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105167v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105167v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@drm_mm@all@replace:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl7/igt@drm_mm@all@replace.html

  * igt@kms_cursor_edge_walk@left-edge@pipe-a-dp-1-64x64:
    - shard-apl:          NOTRUN -> [FAIL][2] +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_cursor_edge_walk@left-edge@pipe-a-dp-1-64x64.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
    - shard-iclb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-tglb:         [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@fds@bcs0:
    - {shard-tglu}:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-6/igt@gem_exec_parallel@fds@bcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglu-2/igt@gem_exec_parallel@fds@bcs0.html

  * {igt@kms_cursor_edge_walk@left-edge@pipe-b-dp-1-128x128}:
    - shard-apl:          NOTRUN -> [FAIL][9] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_cursor_edge_walk@left-edge@pipe-b-dp-1-128x128.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_framebuffer_object@arb_framebuffer_object-depth-stencil-blit depth gl_depth_component24:
    - pig-skl-6260u:      NOTRUN -> [CRASH][10]
   [10]: None

  * spec@glsl-1.50@execution@texelfetchoffset@gs-texelfetch-isampler3d:
    - pig-glk-j5005:      NOTRUN -> [CRASH][11] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/pig-glk-j5005/spec@glsl-1.50@execution@texelfetchoffset@gs-texelfetch-isampler3d.html

  
Known issues
------------

  Here are the changes found in Patchwork_105167v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34]) -> ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [FAIL][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55]) ([i915#5032])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl9/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl9/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl9/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl7/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl7/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl7/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl3/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl10/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl10/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl10/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl9/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl9/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl9/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl1/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/boot.html

  
#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [FAIL][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80]) ([i915#4386]) -> ([PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88], [PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/boot.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/boot.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/boot.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/boot.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl2/boot.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl2/boot.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl2/boot.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl3/boot.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl3/boot.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl3/boot.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl4/boot.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl4/boot.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl4/boot.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl4/boot.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl6/boot.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl6/boot.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl6/boot.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl6/boot.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl7/boot.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl7/boot.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl7/boot.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl7/boot.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/boot.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/boot.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@close-race:
    - shard-snb:          [PASS][106] -> [TIMEOUT][107] ([i915#5748])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-snb4/igt@gem_busy@close-race.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-snb5/igt@gem_busy@close-race.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][108] ([i915#4991])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@gem_create@create-massive.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][109] ([i915#4991])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [PASS][110] -> [DMESG-WARN][111] ([i915#180]) +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-glk:          [PASS][112] -> [INCOMPLETE][113] ([i915#6310])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk8/igt@gem_ctx_persistence@smoketest.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@gem_ctx_persistence@smoketest.html
    - shard-skl:          NOTRUN -> [INCOMPLETE][114] ([i915#6310])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl6/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-kbl:          NOTRUN -> [FAIL][115] ([i915#6117])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl3/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([i915#4525]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][118] -> [FAIL][119] ([i915#2842])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][120] ([i915#2842]) +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk2/igt@gem_exec_fair@basic-pace@rcs0.html
    - shard-kbl:          [PASS][121] -> [FAIL][122] ([i915#2842])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][123] ([i915#2842])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-apl:          NOTRUN -> [DMESG-WARN][124] ([i915#62]) +33 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [PASS][125] -> [DMESG-WARN][126] ([i915#118])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk5/igt@gem_exec_whisper@basic-fds-forked-all.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk6/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][127] -> [SKIP][128] ([i915#2190])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#4613])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-skl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#4613])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl7/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-kbl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#4613])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][132] ([fdo#109271] / [i915#4613]) +2 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_pxp@create-regular-context-2:
    - shard-apl:          NOTRUN -> [SKIP][133] ([fdo#109271]) +70 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@gem_pxp@create-regular-context-2.html

  * igt@gem_softpin@noreloc-s3:
    - shard-kbl:          [PASS][134] -> [DMESG-WARN][135] ([i915#180]) +4 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl4/igt@gem_softpin@noreloc-s3.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl6/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-glk:          NOTRUN -> [SKIP][136] ([fdo#109271]) +127 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][137] ([i915#180]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:
    - shard-glk:          [PASS][138] -> [FAIL][139] ([i915#2521])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][140] ([i915#3689] / [i915#3886])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#3886]) +3 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#3886]) +3 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#3886]) +1 similar issue
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][144] ([fdo#109271] / [i915#3886]) +3 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl1/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][145] ([i915#3689])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb2/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][146] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl7/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-apl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][150] ([i915#1319])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][151] ([i915#1319]) +1 similar issue
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl1/igt@kms_content_protection@srm.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-4tiled:
    - shard-skl:          NOTRUN -> [SKIP][152] ([fdo#109271]) +98 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          NOTRUN -> [FAIL][153] ([i915#4767])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [PASS][154] -> [FAIL][155] ([i915#79])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][156] ([i915#1982] / [i915#62])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][157] -> [FAIL][158] ([i915#2122])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][159] -> [FAIL][160] ([i915#2122])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-skl:          NOTRUN -> [SKIP][161] ([fdo#109271] / [i915#1888]) +2 similar issues
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-kbl:          NOTRUN -> [SKIP][162] ([fdo#109271]) +107 similar issues
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [PASS][163] -> [FAIL][164] ([i915#1188])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][165] ([fdo#108145] / [i915#265]) +3 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][166] ([fdo#108145] / [i915#265])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][167] ([fdo#108145] / [i915#265])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][168] ([i915#265])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
    - shard-iclb:         [PASS][169] -> [SKIP][170] ([i915#5176]) +1 similar issue
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][171] -> [SKIP][172] ([i915#5235]) +2 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][173] ([fdo#109271] / [i915#658])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-apl:          NOTRUN -> [SKIP][174] ([fdo#109271] / [i915#658])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
    - shard-skl:          NOTRUN -> [SKIP][175] ([fdo#109271] / [i915#658])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> [SKIP][176] ([fdo#109271] / [i915#658]) +3 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][177] -> [SKIP][178] ([fdo#109441]) +2 similar issues
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb8/igt@kms_psr@psr2_suspend.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [PASS][179] -> [SKIP][180] ([i915#5519])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb2/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][181] ([fdo#109271] / [i915#2437]) +1 similar issue
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl3/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling:
    - shard-tglb:         [PASS][182] -> [FAIL][183] ([i915#1542])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb2/igt@perf@polling.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb1/igt@perf@polling.html

  * igt@sysfs_clients@fair-3:
    - shard-glk:          NOTRUN -> [SKIP][184] ([fdo#109271] / [i915#2994])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk3/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@fair-7:
    - shard-kbl:          NOTRUN -> [SKIP][185] ([fdo#109271] / [i915#2994]) +2 similar issues
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl1/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - {shard-rkl}:        [SKIP][186] ([i915#3281]) -> [PASS][187] +4 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@drm_read@short-buffer-block:
    - {shard-rkl}:        [SKIP][188] ([i915#4098]) -> [PASS][189] +1 similar issue
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@drm_read@short-buffer-block.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@drm_read@short-buffer-block.html

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][190] ([i915#2582]) -> [PASS][191] +1 similar issue
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@fbdev@nullptr.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-tglu}:       [FAIL][192] ([i915#6268]) -> [PASS][193]
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hostile:
    - {shard-rkl}:        [FAIL][194] ([i915#2410]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@gem_ctx_persistence@hostile.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-5/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-dg1}:        [DMESG-FAIL][196] -> [PASS][197]
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-dg1-13/igt@gem_ctx_persistence@many-contexts.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-dg1-12/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@kms:
    - shard-tglb:         [TIMEOUT][198] ([i915#3063]) -> [PASS][199]
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb5/igt@gem_eio@kms.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb1/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][200] ([i915#4525]) -> [PASS][201] +1 similar issue
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][202] ([i915#2842]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][204] ([i915#2842]) -> [PASS][205] +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][206] ([i915#2842]) -> [PASS][207]
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][208] ([i915#2842]) -> [PASS][209] +2 similar issues
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
    - {shard-rkl}:        [FAIL][210] ([i915#2842]) -> [PASS][211]
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][212] ([i915#2849]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [DMESG-WARN][214] ([i915#118]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [INCOMPLETE][216] ([i915#6310]) -> [PASS][217] +1 similar issue
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk2/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - {shard-rkl}:        [SKIP][218] ([i915#3282]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gen9_exec_parse@valid-registers:
    - {shard-rkl}:        [SKIP][220] ([i915#2527]) -> [PASS][221]
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@reload-no-display:
    - {shard-tglu}:       [FAIL][222] -> [PASS][223]
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-8/igt@i915_module_load@reload-no-display.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglu-8/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_backlight@fade_with_dpms:
    - {shard-rkl}:        [SKIP][224] ([i915#3012]) -> [PASS][225]
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@i915_pm_backlight@fade_with_dpms.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][226] ([i915#1397]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html
    - {shard-dg1}:        [SKIP][228] ([i915#1397]) -> [PASS][229]
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-dg1-16/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@i2c:
    - {shard-rkl}:        [SKIP][230] ([fdo#109308]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@i915_pm_rpm@i2c.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@i915_pm_rpm@i2c.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][232] ([i915#5420]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [DMESG-WARN][234] ([i915#180]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/igt@i915_suspend@forcewake.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:
    - shard-skl:          [FAIL][236] ([i915#2521]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         [FAIL][238] ([i915#3743]) -> [PASS][239] +1 similar issue
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][240] ([i915#1845] / [i915#4098]) -> [PASS][241] +25 similar issues
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - {shard-rkl}:        [SKIP][242] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][243] +1 similar issue
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_color@pipe-b-ctm-green-to-red.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][244] ([i915#2346]) -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
    - shard-iclb:         [FAIL][246] -> [PASS][247] +2 similar issues
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - {shard-rkl}:        [SKIP][248] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][249] +4 similar issues
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][250] ([fdo#110189] / [i915#3955]) -> [PASS][251] +1 similar issue
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-tglb:         [FAIL][252] ([i915#79]) -> [PASS][253] +1 similar issue
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][254] ([i915#79]) -> [PASS][255] +1 similar issue
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [DMESG-WARN][256] ([i915#180]) -> [PASS][257] +7 similar issues
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][258] ([i915#2122]) -> [PASS][259] +1 similar issue
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
    - shard-tglb:         [FAIL][260] -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [SKIP][262] ([i915#3701]) -> [PASS][263] +1 similar issue
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:
    - {shard-rkl}:        [SKIP][264] ([i915#3701]) -> [PASS][265]
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - {shard-rkl}:        [SKIP][266] ([i915#1849] / [i915#4098]) -> [PASS][267] +22 similar issues
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch@pipe-a-dp-1:
    - shard-kbl:          [FAIL][268] ([i915#1188]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html

  * igt@kms_invalid_mode@int-max-clock:
    - {shard-rkl}:        [SKIP][270] ([i915#4278]) -> [PASS][271] +1 similar issue
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_invalid_mode@int-max-clock.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_plane@plane-position-hole-dpms@pipe-b-planes:
    - {shard-rkl}:        [SKIP][272] ([i915#3558]) -> [PASS][273] +1 similar issue
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - {shard-rkl}:        [SKIP][274] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][275] +1 similar issue
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-x:
    - {shard-rkl}:        [SKIP][276] ([i915#1849] / [i915#3558] / [i915#4070]) -> [PASS][277]
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][278] ([i915#5235]) -> [PASS][279] +2 similar issues
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb5/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr@cursor_blt:
    - {shard-rkl}:        [SKIP][280] ([i915#1072]) -> [PASS][281] +2 similar issues
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_psr@cursor_blt.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_psr@cursor_blt.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][282] ([fdo#109441]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - {shard-rkl}:        [SKIP][284] ([i915#5461]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:
    - {shard-rkl}:        [SKIP][286] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][287] +2 similar issues
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_universal_plane@disable-primary-vs-flip-pipe-b.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
    - {shard-tglu}:       [SKIP][288] -> [PASS][289] +2 similar issues
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-8/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglu-8/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][290] ([fdo#109289]) -> [PASS][291]
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-2/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@sysfs_heartbeat_interval@nopreempt@bcs0:
    - shard-tglb:         [FAIL][292] ([i915#6015]) -> [PASS][293] +4 similar issues
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb7/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html

  * igt@testdisplay:
    - {shard-tglu}:       [DMESG-WARN][294] ([i915#4941]) -> [PASS][295]
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-2/igt@testdisplay.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglu-1/igt@testdisplay.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         [FAIL][296] ([i915#2842]) -> [SKIP][297] ([i915#2848])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [SKIP][298] ([i915#2848]) -> [FAIL][299] ([i915#2842]) +5 similar issues
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][300] ([i915#2920]) -> [SKIP][301] ([fdo#111068] / [i915#658])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][302] ([fdo#111068] / [i915#658]) -> [SKIP][303] ([i915#2920])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][304] ([i915#658]) -> [SKIP][305] ([i915#2920])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][306], [FAIL][307]) ([i915#2029] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][308], [FAIL][309], [FAIL][310]) ([i915#3002] / [i915#4312] / [i915#5257])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@runner@aborted.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl3/igt@runner@aborted.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@runner@aborted.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl6/igt@runner@aborted.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
  [i915#6015]: https://gitlab.freedesktop.org/drm/intel/issues/6015
  [i915#6076]: https://gitlab.freedesktop.org/drm/intel/issues/6076
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6247]: https://gitlab.freedesktop.org/drm/intel/issues/6247
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6310]: https://gitlab.freedesktop.org/drm/intel/issues/6310
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11825 -> Patchwork_105167v2

  CI-20190529: 20190529
  CI_DRM_11825: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6551: a01ebaef40f1fa653e9d6a59b719f2d69af2b458 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105167v2: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/index.html

--===============4790023535242457514==
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
<tr><td><b>Series:</b></td><td>Fix TLB invalidate issues with Broadwell (re=
v2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105167/">https://patchwork.freedesktop.org/series/105167/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11825_full -&gt; Patchwork_105167v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105167v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_105167v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105167v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@drm_mm@all@replace:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-skl7/igt@drm_mm@all@replace.html">IN=
COMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@left-edge@pipe-a-dp-1-64x64:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_cursor_edge_walk@left-e=
dge@pipe-a-dp-1-64x64.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip@atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_105167v2/shard-iclb7/igt@kms_cursor_legacy@curs=
or-vs-flip@atomic-transitions-varying-size.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb5/igt@kms_cursor_legacy@flip-vs-cursor@atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105167v2/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor@at=
omic-transitions.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_parallel@fds@bcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-6/igt@gem_exec_parallel@fds@bcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/=
shard-tglu-2/igt@gem_exec_parallel@fds@bcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@kms_cursor_edge_walk@left-edge@pipe-b-dp-1-128x128}:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_cursor_edge_walk@left-e=
dge@pipe-b-dp-1-128x128.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_framebuffer_object@arb_framebuffer_object-depth-stencil-blit de=
pth gl_depth_component24:</p>
<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href=3D"None">CRASH</a></li>
</ul>
</li>
<li>
<p>spec@glsl-1.50@execution@texelfetchoffset@gs-texelfetch-isampler3d:</p>
<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/pig-glk-j5005/spec@glsl-1.50@execution@tex=
elfetchoffset@gs-texelfetch-isampler3d.html">CRASH</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105167v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11825/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11825/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11825/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11825/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11825/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11825/shard-skl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11825/shard-skl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-sk=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1825/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11825/shard-skl10/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl10/boot.html">P=
ASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105167v2/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl9/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-s=
kl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105167v2/shard-skl7/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl7/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v=
2/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105167v2/shard-skl6/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl6/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105167v2/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-sk=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105167v2/shard-skl4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2=
/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v2/shard-skl3/boot.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl1/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105167v2/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105167v2/shard-skl1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl=
10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105167v2/shard-skl10/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/boot.html">PAS=
S</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5032">i9=
15#5032</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11825/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11825/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11825/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11825/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825=
/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11825/shard-apl1/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-ap=
l2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1825/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shar=
d-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11825/shard-apl4/boot.html">PASS</a>) (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4386">i915#4386</a>) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105167v2/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl1/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-a=
pl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105167v2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v=
2/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105167v2/shard-apl3/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl3/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105167v2/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105167v2/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-ap=
l4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105167v2/shard-apl4/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl4/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v2/shard-apl6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105167v2/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105167v2/shard-apl7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105167v2/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl7/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105167v2/shard-apl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-apl8/boot.htm=
l">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-snb4/igt@gem_busy@close-race.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-snb=
5/igt@gem_busy@close-race.html">TIMEOUT</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5748">i915#5748</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@gem_create@create-massive.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4991">i915#4991</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/shard-skl10/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105167v2/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-glk8/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/=
shard-glk8/igt@gem_ctx_persistence@smoketest.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6310">i915#6310</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/shard-skl6/igt@gem_ctx_persistence@smoketes=
t.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/6310">i915#6310</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl3/igt@gem_exec_balancer@parallel-=
ordering.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/6117">i915#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105167v2/shard-iclb7/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-apl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
167v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/shard-glk2/igt@gem_exec_fair@basic-pace@rcs=
0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2842">i915#2842</a>) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/=
shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-iclb4/igt@gem_exec_fair@basic-pace@v=
cs1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@gem_exec_reloc@basic-cpu-re=
ad-active.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/62">i915#62</a>) +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk5/igt@gem_exec_whisper@basic-fds-forked-all.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105167v2/shard-glk6/igt@gem_exec_whisper@basic-fds-forked-all.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i9=
15#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-=
tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-skl7/igt@gem_lmem_swapping@heavy-ver=
ify-random-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl7/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk3/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@create-regular-context-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@gem_pxp@create-regular-cont=
ext-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl4/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-=
kbl6/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk2/igt@i915_pm_rpm@gem-execbuf-str=
ess-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +127 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl1/igt@i915_suspend@fence-restore-=
untiled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk7/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v2/shard-glk5/igt@kms_async_flips@alternate-sync-=
async-flip@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-tglb2/igt@kms_ccs@pipe-b-bad-aux-str=
ide-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@kms_ccs@pipe-b-bad-pixel-fo=
rmat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk3/igt@kms_ccs@pipe-b-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_ccs@pipe-c-crc-primary-=
rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl1/igt@kms_ccs@pipe-c-crc-sprite-p=
lanes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +3 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-tglb2/igt@kms_ccs@pipe-c-random-ccs-=
data-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@kms_chamelium@dp-hpd-enable=
-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl7/igt@kms_chamelium@dp-hpd-for-ea=
ch-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@kms_chamelium@hdmi-crc-mult=
iple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_color_chamelium@pipe-d-=
ctm-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_content_protection@atom=
ic.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl1/igt@kms_content_protection@srm.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-4tiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-skl6/igt@kms_draw_crc@draw-method-xr=
gb8888-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +98 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk2/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105167v2/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@c-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl8/igt@kms_flip@flip-vs-expired-vb=
lank@a-dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105167v2/shard-glk8/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@a-hdmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105167v2/shard-skl9/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@kms_frontbuffer_tracking@fb=
c-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl6/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +107 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5167v2/shard-kbl6/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@kms_plane_alpha_blend@pipe-=
a-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@kms_plane_alpha_blend@pipe-=
b-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@kms_plane_alpha_blend@pipe-=
c-alpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk3/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@=
pipe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb5/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-pixel-formats@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb3/igt@kms_pl=
ane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5176">i915#5176</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb5/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl7/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/shard-apl1/igt@kms_psr2_sf@primary-plane-up=
date-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/shard-skl10/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk8/igt@kms_psr2_su@page_flip-nv12.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/658">i915#658</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-i=
clb8/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105167v2/shard-tglb2/igt@kms_psr_stress_test@invalidate-prim=
ary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl3/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb2/igt@perf@polling.html">PASS</a> -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb1/igt=
@perf@polling.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-glk3/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-kbl1/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@api_intel_bb@blit-reloc-purge-cache.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i91=
5#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105167v2/shard-rkl-5/igt@api_intel_bb@blit-reloc-purge-cache.html">PAS=
S</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@drm_read@short-buffer-block.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
167v2/shard-rkl-6/igt@drm_read@short-buffer-block.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@fbdev@nullptr.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rk=
l-6/igt@fbdev@nullptr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#62=
68</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105167v2/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#2410</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
167v2/shard-rkl-5/igt@gem_ctx_persistence@hostile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-dg1-13/igt@gem_ctx_persistence@many-contexts.html">DMES=
G-FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105167v2/shard-dg1-12/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb5/igt@gem_eio@kms.html">TIMEOUT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-t=
glb1/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105167v2/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-1/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_105167v2/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5167v2/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i91=
5#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105167v2/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5167v2/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +2 simi=
lar issues</p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-rkl-1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05167v2/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#=
2849</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105167v2/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105167v2/shard-glk8/igt@gem_exec_whisper@basic-contexts-pr=
iority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6310">i915#6310</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105167v2/shard-glk2/igt@gem_exec_whisper@basic-fds-priority-a=
ll.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3282">i=
915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105167v2/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#25=
27</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105167v2/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-8/igt@i915_module_load@reload-no-display.html">FAI=
L</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05167v2/shard-tglu-8/igt@i915_module_load@reload-no-display.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@i915_pm_backlight@fade_with_dpms.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3=
012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105167v2/shard-rkl-6/igt@i915_pm_backlight@fade_with_dpms.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-rkl-1/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/=
shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></p>
</li>
<li>
<p>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/=
shard-dg1-16/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@i915_pm_rpm@i2c.html">SKIP</a> (<a href=3D"ht=
tps://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#109308</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shar=
d-rkl-6/igt@i915_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5420"=
>i915#5420</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105167v2/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-apl2/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10516=
7v2/shard-apl1/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-b-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-b-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2521">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/shard-skl6/igt@kms_async_flips@alternate-sy=
nc-async-flip@pipe-b-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-tglb7/igt@kms_big_fb@y-til=
ed-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_r=
c_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_ccs@pipe-b-bad-aux-s=
tride-y_tiled_gen12_rc_ccs.html">PASS</a> +25 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-green-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@kms_color@pipe-b-ctm-green-to-red.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#=
1149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849"=
>i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_color@pipe-b-ctm-green-to=
-red.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-glk7/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html"=
>FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105167v2/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html">P=
ASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_draw_crc@draw-meth=
od-xrgb8888-blt-xtiled.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110189">fdo#110189</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#=
3955</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105167v2/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105167v2/shard-tglb7/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105167v2/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-=
interruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105167v2/shard-kbl3/igt@kms_flip@flip-vs-suspend-interrupt=
ible@c-dp1.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105167v2/shard-skl7/igt@kms_flip@plain-flip-fb-recreate=
-interruptible@a-edp1.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105167v2/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate-int=
erruptible@a-edp1.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb8/igt@kms_flip_scale=
d_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling:<=
/p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytilercccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_flip_scale=
d_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-dra=
w-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_frontbuffer_trac=
king@fbcpsr-rgb101010-draw-mmap-wc.html">PASS</a> +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl1/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05167v2/shard-kbl7/igt@kms_hdr@bpc-switch@pipe-a-dp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_invalid_mode@int-max-clock.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4278">i915#427=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105167v2/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@kms_plane@plane-position-hole-dpms@pipe-b-pla=
nes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_plane@plane-position-hole-dp=
ms@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849"=
>i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-a-=
alpha-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-x:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_plane_multiple@atomic-pipe-b-tiling-x.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
9">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/3558">i915#3558</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_plane_multiple@atomic-p=
ipe-b-tiling-x.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downsc=
ale-factor-0-5@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-iclb5/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_blt:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_psr@cursor_blt.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/sha=
rd-rkl-6/igt@kms_psr@cursor_blt.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5167v2/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5461">i915#5461</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_psr_stress_test@flip-prim=
ary-invalidate-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@kms_universal_plane@disable-primary-vs-flip-p=
ipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105167v2/shard-rkl-6/igt@kms_universal_plan=
e@disable-primary-vs-flip-pipe-b.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-8/igt@kms_vblank@pipe-d-ts-continuation-modeset-rp=
m.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105167v2/shard-tglu-8/igt@kms_vblank@pipe-d-ts-continuation-modes=
et-rpm.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9289">fdo#109289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105167v2/shard-rkl-2/igt@perf@gen12-unprivileged-single-ctx-=
counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6015"=
>i915#6015</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105167v2/shard-tglb7/igt@sysfs_heartbeat_interval@nopreempt@bcs0.h=
tml">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-2/igt@testdisplay.html">DMESG-WARN</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/4941">i915#4941</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/sha=
rd-tglu-1/igt@testdisplay.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105167v2/shard-tglb1/igt@gem_exec_fair@basic-none-solo@rcs0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#=
2848</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#2848=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05167v2/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) =
+5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105167v2/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105167v2/shard-iclb2/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105167v2/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11825/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl3/igt@runner@ab=
orted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105167v2/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105167v2/shard-skl10/igt@r=
unner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11825 -&gt; Patchwork_105167v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11825: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6551: a01ebaef40f1fa653e9d6a59b719f2d69af2b458 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105167v2: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4790023535242457514==--
