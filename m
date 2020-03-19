Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E94118B212
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 12:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F012B6E9F8;
	Thu, 19 Mar 2020 11:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2EA56E9F7;
 Thu, 19 Mar 2020 11:07:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BAAC5A363B;
 Thu, 19 Mar 2020 11:07:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Mar 2020 11:07:21 -0000
Message-ID: <158461604175.17934.13077561998862247889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319081456.9218-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200319081456.9218-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Prefer_=27=25ps=27_for_?=
 =?utf-8?q?printing_function_symbol_names_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/4] drm/i915: Prefer '%ps' for printing function symbol names (rev2)
URL   : https://patchwork.freedesktop.org/series/74864/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8157_full -> Patchwork_17021_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17021_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17021_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17021_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@engines-hostile@bcs0:
    - shard-kbl:          [PASS][1] -> [FAIL][2] +49 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl6/igt@gem_ctx_persistence@engines-hostile@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl7/igt@gem_ctx_persistence@engines-hostile@bcs0.html

  * igt@gem_ctx_persistence@file:
    - shard-tglb:         [PASS][3] -> [FAIL][4] +44 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb6/igt@gem_ctx_persistence@file.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-tglb6/igt@gem_ctx_persistence@file.html
    - shard-skl:          [PASS][5] -> [FAIL][6] +41 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl10/igt@gem_ctx_persistence@file.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl9/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@legacy-engines-cleanup@render:
    - shard-glk:          [PASS][7] -> [FAIL][8] +41 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk8/igt@gem_ctx_persistence@legacy-engines-cleanup@render.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk9/igt@gem_ctx_persistence@legacy-engines-cleanup@render.html

  * igt@gem_ctx_persistence@legacy-engines-hostile-preempt@bsd1:
    - shard-iclb:         NOTRUN -> [FAIL][9] +6 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb4/igt@gem_ctx_persistence@legacy-engines-hostile-preempt@bsd1.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@bsd:
    - shard-iclb:         [PASS][10] -> [FAIL][11] +39 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-hostile@bsd.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb8/igt@gem_ctx_persistence@legacy-engines-hostile@bsd.html

  * igt@gem_ctx_persistence@replace@vcs0:
    - shard-apl:          [PASS][12] -> [FAIL][13] +41 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl4/igt@gem_ctx_persistence@replace@vcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl7/igt@gem_ctx_persistence@replace@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_17021_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-glk:          [PASS][14] -> [FAIL][15] ([i915#1166])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk1/igt@gem_ctx_exec@basic-nohangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk8/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-snb:          [PASS][16] -> [FAIL][17] ([i915#1379])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-snb4/igt@gem_ctx_exec@basic-nohangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-snb6/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-hsw:          [PASS][18] -> [FAIL][19] ([i915#1379])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-hsw5/igt@gem_ctx_exec@basic-nohangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-hsw6/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-kbl:          [PASS][20] -> [FAIL][21] ([i915#1166])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl2/igt@gem_ctx_exec@basic-nohangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl3/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-apl:          [PASS][22] -> [FAIL][23] ([i915#1166])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl1/igt@gem_ctx_exec@basic-nohangcheck.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl3/igt@gem_ctx_exec@basic-nohangcheck.html
    - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#1166])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@gem_ctx_exec@basic-nohangcheck.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [PASS][26] -> [INCOMPLETE][27] ([fdo#103927])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl4/igt@gem_ctx_isolation@bcs0-s3.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-tglb:         [PASS][28] -> [TIMEOUT][29] ([i915#1340])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb6/igt@gem_ctx_persistence@close-replace-race.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-tglb1/igt@gem_ctx_persistence@close-replace-race.html
    - shard-iclb:         [PASS][30] -> [FAIL][31] ([i915#1241])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb2/igt@gem_ctx_persistence@close-replace-race.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb4/igt@gem_ctx_persistence@close-replace-race.html
    - shard-apl:          [PASS][32] -> [FAIL][33] ([i915#1241])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl6/igt@gem_ctx_persistence@close-replace-race.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][34] -> [TIMEOUT][35] ([i915#1340])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl9/igt@gem_ctx_persistence@close-replace-race.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl3/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-hostile-preempt@vecs0:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#1440]) +9 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb5/igt@gem_ctx_persistence@engines-hostile-preempt@vecs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-tglb7/igt@gem_ctx_persistence@engines-hostile-preempt@vecs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-kbl:          [PASS][38] -> [INCOMPLETE][39] ([i915#1197] / [i915#1239])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl2/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl3/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@rcs0:
    - shard-iclb:         [PASS][40] -> [FAIL][41] ([i915#679]) +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb8/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb2/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#679]) +2 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl1/igt@gem_ctx_persistence@engines-mixed-process@rcs0.html

  * igt@gem_ctx_persistence@hostile:
    - shard-apl:          [PASS][44] -> [FAIL][45] ([i915#1081])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl7/igt@gem_ctx_persistence@hostile.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl7/igt@gem_ctx_persistence@hostile.html
    - shard-iclb:         [PASS][46] -> [FAIL][47] ([i915#1081])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb5/igt@gem_ctx_persistence@hostile.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb1/igt@gem_ctx_persistence@hostile.html
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#1081])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@gem_ctx_persistence@hostile.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl9/igt@gem_ctx_persistence@hostile.html
    - shard-glk:          [PASS][50] -> [FAIL][51] ([i915#1081])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk9/igt@gem_ctx_persistence@hostile.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk5/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd:
    - shard-apl:          [PASS][52] -> [INCOMPLETE][53] ([fdo#103927] / [i915#1197] / [i915#1239]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl8/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
    - shard-iclb:         [PASS][54] -> [INCOMPLETE][55] ([i915#1239]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
    - shard-glk:          [PASS][56] -> [INCOMPLETE][57] ([i915#1197] / [i915#1239] / [i915#58] / [k.org#198133]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk5/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
    - shard-skl:          [PASS][58] -> [INCOMPLETE][59] ([i915#1197] / [i915#1239]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl10/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1:
    - shard-tglb:         [PASS][60] -> [INCOMPLETE][61] ([i915#1239]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-tglb1/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
    - shard-kbl:          [PASS][62] -> [INCOMPLETE][63] ([i915#1239])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@bsd1.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-kbl:          [PASS][64] -> [FAIL][65] ([i915#679]) +12 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl7/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_ctx_persistence@legacy-engines-mixed@blt:
    - shard-apl:          [PASS][66] -> [FAIL][67] ([i915#679]) +10 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl4/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl1/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
    - shard-tglb:         [PASS][68] -> [FAIL][69] ([i915#679]) +11 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-tglb6/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
    - shard-glk:          [PASS][70] -> [FAIL][71] ([i915#679]) +10 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk4/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk3/igt@gem_ctx_persistence@legacy-engines-mixed@blt.html

  * igt@gem_ctx_persistence@processes:
    - shard-apl:          [PASS][72] -> [FAIL][73] ([i915#570] / [i915#679])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl7/igt@gem_ctx_persistence@processes.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl4/igt@gem_ctx_persistence@processes.html
    - shard-iclb:         [PASS][74] -> [FAIL][75] ([i915#570])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb6/igt@gem_ctx_persistence@processes.html
    - shard-glk:          [PASS][76] -> [FAIL][77] ([i915#570] / [i915#679])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk2/igt@gem_ctx_persistence@processes.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk1/igt@gem_ctx_persistence@processes.html
    - shard-kbl:          [PASS][78] -> [FAIL][79] ([i915#570] / [i915#679])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl2/igt@gem_ctx_persistence@processes.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl1/igt@gem_ctx_persistence@processes.html
    - shard-tglb:         [PASS][80] -> [FAIL][81] ([i915#570])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb5/igt@gem_ctx_persistence@processes.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-tglb7/igt@gem_ctx_persistence@processes.html
    - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#570] / [i915#679])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl7/igt@gem_ctx_persistence@processes.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl2/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_persistence@replace-hostile@bcs0:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#1154]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl5/igt@gem_ctx_persistence@replace-hostile@bcs0.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl6/igt@gem_ctx_persistence@replace-hostile@bcs0.html
    - shard-apl:          [PASS][86] -> [FAIL][87] ([i915#1154]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl8/igt@gem_ctx_persistence@replace-hostile@bcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl6/igt@gem_ctx_persistence@replace-hostile@bcs0.html
    - shard-glk:          [PASS][88] -> [FAIL][89] ([i915#1154]) +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk2/igt@gem_ctx_persistence@replace-hostile@bcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk6/igt@gem_ctx_persistence@replace-hostile@bcs0.html

  * igt@gem_ctx_persistence@replace-hostile@rcs0:
    - shard-tglb:         [PASS][90] -> [FAIL][91] ([i915#1154]) +4 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb2/igt@gem_ctx_persistence@replace-hostile@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-tglb2/igt@gem_ctx_persistence@replace-hostile@rcs0.html

  * igt@gem_ctx_persistence@replace-hostile@vcs0:
    - shard-kbl:          [PASS][92] -> [FAIL][93] ([i915#1154]) +4 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl6/igt@gem_ctx_persistence@replace-hostile@vcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl6/igt@gem_ctx_persistence@replace-hostile@vcs0.html

  * igt@gem_ctx_persistence@replace-hostile@vecs0:
    - shard-iclb:         [PASS][94] -> [FAIL][95] ([i915#1154]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb6/igt@gem_ctx_persistence@replace-hostile@vecs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb8/igt@gem_ctx_persistence@replace-hostile@vecs0.html

  * igt@gem_ctx_persistence@saturated-hostile@bcs0:
    - shard-kbl:          [PASS][96] -> [FAIL][97] ([i915#1368]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl3/igt@gem_ctx_persistence@saturated-hostile@bcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl7/igt@gem_ctx_persistence@saturated-hostile@bcs0.html

  * igt@gem_exec_schedule@implicit-write-read-bsd1:
    - shard-iclb:         [PASS][98] -> [SKIP][99] ([fdo#109276] / [i915#677])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd1.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd1.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([i915#677])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][102] -> [SKIP][103] ([fdo#112146]) +5 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [PASS][104] -> [INCOMPLETE][105] ([fdo#111736] / [i915#460])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-tglb1/igt@gem_exec_suspend@basic-s3.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-tglb3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-iclb:         [PASS][106] -> [FAIL][107] ([i915#644])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][108] -> [DMESG-WARN][109] ([i915#716])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl6/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-kbl:          [PASS][110] -> [INCOMPLETE][111] ([i915#151] / [i915#155])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl3/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [PASS][112] -> [FAIL][113] ([i915#413])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb3/igt@i915_pm_rps@reset.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb7/igt@i915_pm_rps@reset.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][114] -> [INCOMPLETE][115] ([i915#300])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][116] -> [FAIL][117] ([i915#79])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-skl:          [PASS][118] -> [INCOMPLETE][119] ([i915#221])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl7/igt@kms_flip@flip-vs-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][120] -> [FAIL][121] ([i915#1188])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][122] -> [DMESG-WARN][123] ([i915#180]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][124] -> [SKIP][125] ([fdo#109642] / [fdo#111068])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb3/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][126] -> [SKIP][127] ([fdo#109441]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][128] -> [FAIL][129] ([i915#31])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl3/igt@kms_setmode@basic.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][130] -> [DMESG-WARN][131] ([i915#180]) +4 similar issues
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][132] -> [SKIP][133] ([fdo#112080]) +15 similar issues
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb4/igt@perf_pmu@busy-vcs1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb7/igt@perf_pmu@busy-vcs1.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [PASS][134] -> [SKIP][135] ([fdo#109276]) +21 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb8/igt@prime_vgem@fence-wait-bsd2.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][136] ([fdo#110854]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb8/igt@gem_exec_balancer@smoke.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_schedule@fifo-bsd1:
    - shard-iclb:         [SKIP][138] ([fdo#109276]) -> [PASS][139] +16 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb7/igt@gem_exec_schedule@fifo-bsd1.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb4/igt@gem_exec_schedule@fifo-bsd1.html

  * igt@gem_exec_schedule@implicit-read-write-bsd1:
    - shard-iclb:         [SKIP][140] ([fdo#109276] / [i915#677]) -> [PASS][141] +3 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd1.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb4/igt@gem_exec_schedule@implicit-read-write-bsd1.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][142] ([i915#677]) -> [PASS][143] +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb8/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-bsd:
    - shard-iclb:         [SKIP][144] ([fdo#112146]) -> [PASS][145] +4 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb1/igt@gem_exec_schedule@preempt-bsd.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb8/igt@gem_exec_schedule@preempt-bsd.html

  * igt@gem_exec_store@cachelines-vcs1:
    - shard-iclb:         [SKIP][146] ([fdo#112080]) -> [PASS][147] +11 similar issues
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb7/igt@gem_exec_store@cachelines-vcs1.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb4/igt@gem_exec_store@cachelines-vcs1.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][148] ([i915#644]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [INCOMPLETE][150] ([i915#69]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@i915_suspend@fence-restore-untiled.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-iclb:         [INCOMPLETE][152] ([i915#1185] / [i915#221]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb3/igt@kms_flip@flip-vs-suspend.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb7/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][154] ([i915#180]) -> [PASS][155] +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][156] ([i915#180]) -> [PASS][157] +9 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][158] ([fdo#108145]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][160] ([i915#899]) -> [PASS][161] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-glk9/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-glk1/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][162] ([fdo#109642] / [fdo#111068]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][164] ([fdo#109441]) -> [PASS][165] +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8157/shard-iclb8/igt@kms_psr@psr2_cursor_render.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][166] ([i915#31]) -> [PASS][167]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17021/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
