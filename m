Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D5D561390
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 09:48:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56AC9112A67;
	Thu, 30 Jun 2022 07:48:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF6E6112A59;
 Thu, 30 Jun 2022 07:48:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D59E3A66C9;
 Thu, 30 Jun 2022 07:48:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1487657718964755380=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 30 Jun 2022 07:48:31 -0000
Message-ID: <165657531186.26513.7915840705426922738@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220629134721.48375-1-jose.souza@intel.com>
In-Reply-To: <20220629134721.48375-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drain_freed_object_after_suspend_display_=28rev3=29?=
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

--===============1487657718964755380==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Drain freed object after suspend display (rev3)
URL   : https://patchwork.freedesktop.org/series/105779/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11825_full -> Patchwork_105779v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_105779v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_105779v3_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105779v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip@atomic.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_copy_image@arb_copy_image-formats --samples=4:
    - pig-skl-6260u:      NOTRUN -> [INCOMPLETE][2]
   [2]: None

  * spec@arb_framebuffer_srgb@blit texture srgb downsample enabled clear:
    - pig-glk-j5005:      NOTRUN -> [CRASH][3] +3 similar issues
   [3]: None

  * spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-eq-uint64_t-uint64_t:
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/pig-glk-j5005/spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-eq-uint64_t-uint64_t.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11825_full and Patchwork_105779v3_full:

### New IGT tests (9) ###

  * igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-128x128:
    - Statuses : 1 pass(s)
    - Exec time: [3.20] s

  * igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-256x256:
    - Statuses : 1 pass(s)
    - Exec time: [3.21] s

  * igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-64x64:
    - Statuses : 1 pass(s)
    - Exec time: [3.21] s

  * igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-128x128:
    - Statuses : 1 pass(s)
    - Exec time: [3.20] s

  * igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-256x256:
    - Statuses : 1 pass(s)
    - Exec time: [3.21] s

  * igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-64x64:
    - Statuses : 1 pass(s)
    - Exec time: [3.19] s

  * igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-128x128:
    - Statuses : 1 pass(s)
    - Exec time: [3.19] s

  * igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-256x256:
    - Statuses : 1 pass(s)
    - Exec time: [3.21] s

  * igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-64x64:
    - Statuses : 1 pass(s)
    - Exec time: [3.21] s

  

Known issues
------------

  Here are the changes found in Patchwork_105779v3_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [FAIL][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29]) ([i915#4386]) -> ([PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl7/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl8/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl8/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl4/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl3/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl3/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl3/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl3/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][55] ([i915#4991])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl9/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-glk:          [PASS][56] -> [INCOMPLETE][57] ([i915#6310])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk8/igt@gem_ctx_persistence@smoketest.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk1/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][58] -> [TIMEOUT][59] ([i915#3070])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-kbl:          NOTRUN -> [FAIL][60] ([i915#6117])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [PASS][61] -> [SKIP][62] ([i915#4525]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][63] -> [FAIL][64] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-kbl:          [PASS][65] -> [FAIL][66] ([i915#2842]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          NOTRUN -> [FAIL][67] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][68] -> [FAIL][69] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][70] -> [FAIL][71] ([i915#2876])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][72] ([i915#2842]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][73] ([i915#180])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl7/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [PASS][74] -> [DMESG-FAIL][75] ([i915#6310])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk5/igt@gem_exec_whisper@basic-fds-forked-all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk7/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-iclb:         [PASS][76] -> [INCOMPLETE][77] ([i915#5498])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb8/igt@gem_exec_whisper@basic-fds-priority-all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb3/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#4613])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#4613])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl9/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#4613]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#4613]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk6/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3323])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][83] -> [DMESG-WARN][84] ([i915#180]) +5 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271]) +127 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk5/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_suspend@debugfs-reader:
    - shard-apl:          [PASS][86] -> [DMESG-WARN][87] ([i915#180])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl3/igt@i915_suspend@debugfs-reader.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl2/igt@i915_suspend@debugfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-skl:          [PASS][88] -> [FAIL][89] ([i915#2521])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3689] / [i915#3886])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb7/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#3886]) +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk6/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3886]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#3886]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#3689])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb7/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-glk:          NOTRUN -> [SKIP][96] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk1/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-snb:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-snb7/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_chamelium@hdmi-crc-multiple.html

  * igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][101] ([i915#1319])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][102] ([i915#1319]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@kms_content_protection@srm.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-4tiled:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271]) +149 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-4tiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          NOTRUN -> [FAIL][104] ([i915#4767])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk5/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [PASS][105] -> [FAIL][106] ([i915#4767])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][107] -> [FAIL][108] ([i915#2122])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][109] -> [FAIL][110] ([i915#4911])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
    - shard-iclb:         [PASS][111] -> [SKIP][112] ([i915#3701])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#1888]) +2 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271]) +47 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-snb:          NOTRUN -> [SKIP][115] ([fdo#109271]) +37 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-snb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-kbl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +128 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-kbl:          NOTRUN -> [FAIL][117] ([i915#1188])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265]) +3 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][119] ([fdo#108145] / [i915#265])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][120] ([i915#265])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][121] -> [SKIP][122] ([i915#5235]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#658])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#658])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-glk:          NOTRUN -> [SKIP][125] ([fdo#109271] / [i915#658]) +3 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][126] -> [SKIP][127] ([fdo#109441]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb7/igt@kms_psr@psr2_suspend.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglb:         [PASS][128] -> [SKIP][129] ([i915#5519])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_writeback@writeback-check-output:
    - shard-kbl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2437]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@kms_writeback@writeback-check-output.html

  * igt@prime_mmap_coherency@ioctl-errors:
    - shard-skl:          [PASS][131] -> [DMESG-FAIL][132] ([i915#6310])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/igt@prime_mmap_coherency@ioctl-errors.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl7/igt@prime_mmap_coherency@ioctl-errors.html

  * igt@sw_sync@sync_multi_timeline_wait:
    - shard-skl:          NOTRUN -> [FAIL][133] ([i915#6140])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl1/igt@sw_sync@sync_multi_timeline_wait.html

  * igt@sysfs_clients@fair-3:
    - shard-glk:          NOTRUN -> [SKIP][134] ([fdo#109271] / [i915#2994])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk6/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@fair-7:
    - shard-kbl:          NOTRUN -> [SKIP][135] ([fdo#109271] / [i915#2994]) +2 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2994]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl1/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@fbdev@info:
    - {shard-rkl}:        [SKIP][137] ([i915#2582]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@fbdev@info.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@fbdev@info.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - {shard-tglu}:       [FAIL][139] ([i915#6268]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hostile:
    - {shard-rkl}:        [FAIL][141] ([i915#2410]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@gem_ctx_persistence@hostile.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-5/igt@gem_ctx_persistence@hostile.html
    - shard-tglb:         [FAIL][143] ([i915#2410]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb5/igt@gem_ctx_persistence@hostile.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb2/igt@gem_ctx_persistence@hostile.html

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-dg1}:        [DMESG-FAIL][145] -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-dg1-13/igt@gem_ctx_persistence@many-contexts.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-dg1-16/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][147] ([i915#3063]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-1/igt@gem_eio@unwedge-stress.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglu-1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][149] ([i915#4525]) -> [PASS][150] +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][151] ([i915#2842]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][153] ([i915#2842]) -> [PASS][154] +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-gtt-wc:
    - {shard-rkl}:        [SKIP][155] ([i915#3281]) -> [PASS][156] +4 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@gem_exec_schedule@semaphore-power:
    - {shard-rkl}:        [SKIP][157] ([fdo#110254]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-glk:          [DMESG-WARN][159] ([i915#118]) -> [PASS][160]
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk1/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [INCOMPLETE][161] ([i915#6310]) -> [PASS][162] +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk5/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - {shard-rkl}:        [SKIP][163] ([i915#3282]) -> [PASS][164] +2 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gen9_exec_parse@secure-batches:
    - {shard-rkl}:        [SKIP][165] ([i915#2527]) -> [PASS][166] +2 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-1/igt@gen9_exec_parse@secure-batches.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@reload-no-display:
    - {shard-tglu}:       [FAIL][167] -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-8/igt@i915_module_load@reload-no-display.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglu-3/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][169] ([i915#3012]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@i915_pm_backlight@bad-brightness.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - {shard-tglu}:       [WARN][171] ([i915#2681]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-fence.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@cursor-dpms:
    - {shard-rkl}:        [SKIP][173] ([i915#1849]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@i915_pm_rpm@cursor-dpms.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-dg1}:        [SKIP][175] ([i915#1397]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-dg1-12/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@drm-resources-equal:
    - {shard-rkl}:        [SKIP][177] ([fdo#109308]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][179] ([i915#5420]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][181] ([i915#3921]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - {shard-rkl}:        [SKIP][183] ([i915#1845] / [i915#4098]) -> [PASS][184] +38 similar issues
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         [FAIL][185] ([i915#3743]) -> [PASS][186] +1 similar issue
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_color@pipe-a-ctm-max:
    - {shard-rkl}:        [SKIP][187] ([i915#1149] / [i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][188] +2 similar issues
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_color@pipe-a-ctm-max.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_color@pipe-a-ctm-red-to-blue:
    - {shard-rkl}:        [SKIP][189] ([i915#1149] / [i915#1849] / [i915#4098]) -> [PASS][190] +2 similar issues
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@kms_color@pipe-a-ctm-red-to-blue.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_color@pipe-a-ctm-red-to-blue.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][191] ([i915#2346]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@toggle:
    - shard-iclb:         [FAIL][193] -> [PASS][194] +2 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:
    - {shard-rkl}:        [SKIP][195] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][196] +11 similar issues
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled.html

  * igt@kms_fbcon_fbt@fbc:
    - {shard-rkl}:        [SKIP][197] ([i915#1849] / [i915#4098]) -> [PASS][198] +32 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][199] ([i915#180] / [i915#4939]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-tglb:         [FAIL][201] ([i915#79]) -> [PASS][202] +1 similar issue
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][203] ([i915#79]) -> [PASS][204] +1 similar issue
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [INCOMPLETE][205] ([i915#1982] / [i915#5864]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][207] ([i915#180]) -> [PASS][208] +6 similar issues
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][209] ([i915#2122]) -> [PASS][210] +1 similar issue
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
    - shard-tglb:         [FAIL][211] -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [SKIP][213] ([i915#3701]) -> [PASS][214] +1 similar issue
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
    - {shard-rkl}:        [SKIP][215] ([i915#3701]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html

  * igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:
    - {shard-rkl}:        [SKIP][217] ([i915#1849] / [i915#3558]) -> [PASS][218] +3 similar issues
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - {shard-rkl}:        [SKIP][219] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][220] +1 similar issue
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [SKIP][221] ([i915#5235]) -> [PASS][222] +2 similar issues
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-iclb:         [SKIP][223] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [SKIP][225] ([fdo#109441]) -> [PASS][226] +1 similar issue
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@sprite_plane_onoff:
    - {shard-rkl}:        [SKIP][227] ([i915#1072]) -> [PASS][228] +3 similar issues
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_psr@sprite_plane_onoff.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_universal_plane@cursor-fb-leak-pipe-b:
    - {shard-rkl}:        [SKIP][229] ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak-pipe-b.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:
    - {shard-tglu}:       [SKIP][231] -> [PASS][232] +2 similar issues
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglu-8/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglu-3/igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm.html

  * igt@perf@gen12-unprivileged-single-ctx-counters:
    - {shard-rkl}:        [SKIP][233] ([fdo#109289]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-5/igt@perf@gen12-unprivileged-single-ctx-counters.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-1/igt@perf@gen12-unprivileged-single-ctx-counters.html

  * igt@prime_vgem@basic-read:
    - {shard-rkl}:        [SKIP][235] ([fdo#109295] / [i915#3291] / [i915#3708]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-rkl-6/igt@prime_vgem@basic-read.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-5/igt@prime_vgem@basic-read.html

  * igt@sysfs_heartbeat_interval@nopreempt@bcs0:
    - shard-tglb:         [FAIL][237] ([i915#6015]) -> [PASS][238] +4 similar issues
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html

  * igt@sysfs_heartbeat_interval@precise@vecs0:
    - shard-kbl:          [FAIL][239] ([i915#1755]) -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl4/igt@sysfs_heartbeat_interval@precise@vecs0.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@sysfs_heartbeat_interval@precise@vecs0.html

  
#### Warnings ####

  * igt@gem_eio@kms:
    - shard-tglb:         [TIMEOUT][241] ([i915#3063]) -> [FAIL][242] ([i915#5784])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb5/igt@gem_eio@kms.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb2/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][243] ([i915#4525]) -> [FAIL][244] ([i915#6117])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [SKIP][245] ([i915#2848]) -> [FAIL][246] ([i915#2842]) +5 similar issues
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][247] ([i915#2920]) -> [SKIP][248] ([fdo#111068] / [i915#658])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][249], [FAIL][250], [FAIL][251], [FAIL][252], [FAIL][253], [FAIL][254], [FAIL][255], [FAIL][256], [FAIL][257], [FAIL][258]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92]) -> ([FAIL][259], [FAIL][260], [FAIL][261], [FAIL][262], [FAIL][263], [FAIL][264], [FAIL][265], [FAIL][266], [FAIL][267]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl3/igt@runner@aborted.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@runner@aborted.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@runner@aborted.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@runner@aborted.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl7/igt@runner@aborted.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@runner@aborted.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@runner@aborted.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl3/igt@runner@aborted.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@runner@aborted.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@runner@aborted.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@runner@aborted.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@runner@aborted.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@runner@aborted.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl7/igt@runner@aborted.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@runner@aborted.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@runner@aborted.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl7/igt@runner@aborted.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl7/igt@runner@aborted.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
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
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1755]: https://gitlab.freedesktop.org/drm/intel/issues/1755
  [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2848]: https://gitlab.freedesktop.org/drm/intel/issues/2848
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2876]: https://gitlab.freedesktop.org/drm/intel/issues/2876
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
  [i915#3376]: https://gitlab.freedesktop.org/drm/intel/issues/3376
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
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
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#404]: https://gitlab.freedesktop.org/drm/intel/issues/404
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
  [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
  [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
  [i915#4462]: https://gitlab.freedesktop.org/drm/intel/issues/4462
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4833]: https://gitlab.freedesktop.org/drm/intel/issues/4833
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4853]: https://gitlab.freedesktop.org/drm/intel/issues/4853
  [i915#4884]: https://gitlab.freedesktop.org/drm/intel/issues/4884
  [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
  [i915#4911]: https://gitlab.freedesktop.org/drm/intel/issues/4911
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5327]: https://gitlab.freedesktop.org/drm/intel/issues/5327
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5420]: https://gitlab.freedesktop.org/drm/intel/issues/5420
  [i915#5498]: https://gitlab.freedesktop.org/drm/intel/issues/5498
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5563]: https://gitlab.freedesktop.org/drm/intel/issues/5563
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5864]: https://gitlab.freedesktop.org/drm/intel/issues/5864
  [i915#6015]: https://gitlab.freedesktop.org/drm/intel/issues/6015
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6140]: https://gitlab.freedesktop.org/drm/intel/issues/6140
  [i915#6248]: https://gitlab.freedesktop.org/drm/intel/issues/6248
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6310]: https://gitlab.freedesktop.org/drm/intel/issues/6310
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11825 -> Patchwork_105779v3

  CI-20190529: 20190529
  CI_DRM_11825: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6551: a01ebaef40f1fa653e9d6a59b719f2d69af2b458 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105779v3: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/index.html

--===============1487657718964755380==
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
<tr><td><b>Series:</b></td><td>drm/i915: Drain freed object after suspend d=
isplay (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/105779/">https://patchwork.freedesktop.org/series/105779/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105779v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105779v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11825_full -&gt; Patchwork_105779v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_105779v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_105779v3_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
105779v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@cursor-vs-flip@atomic:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl9/igt@kms_cursor_legacy@cursor-vs=
-flip@atomic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>spec@arb_copy_image@arb_copy_image-formats --samples=3D4:</p>
<ul>
<li>pig-skl-6260u:      NOTRUN -&gt; <a href=3D"None">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>spec@arb_framebuffer_srgb@blit texture srgb downsample enabled clear:</p>
<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"None">CRASH</a> +3 similar =
issues</li>
</ul>
</li>
<li>
<p>spec@arb_gpu_shader_int64@execution@built-in-functions@gs-op-eq-uint64_t=
-uint64_t:</p>
<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/pig-glk-j5005/spec@arb_gpu_shader_int64@ex=
ecution@built-in-functions@gs-op-eq-uint64_t-uint64_t.html">INCOMPLETE</a><=
/li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11825_full and Patchwork_1=
05779v3_full:</p>
<h3>New IGT tests (9)</h3>
<ul>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-128x128:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-256x256:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-b-hdmi-a-3-64x64:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-128x128:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-256x256:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-c-hdmi-a-3-64x64:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-128x128:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.19] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-256x256:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@top-bottom@pipe-d-hdmi-a-3-64x64:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.21] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105779v3_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
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
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105779v3/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl2/boot.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-a=
pl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105779v3/shard-apl1/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v=
3/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105779v3/shard-apl8/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl8/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105779v3/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_105779v3/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-ap=
l7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_105779v3/shard-apl7/boot.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl6/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3=
/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_105779v3/shard-apl6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl4/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105779v3/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_105779v3/shard-apl4/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl=
4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105779v3/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl3/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_105779v3/shard-apl3/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-apl2/boot.htm=
l">PASS</a>)</li>
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
/tree/drm-tip/Patchwork_105779v3/shard-skl9/igt@gem_create@create-massive.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk8/igt@gem_ctx_persistence@smoketest.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3=
/shard-glk1/igt@gem_ctx_persistence@smoketest.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6310">i915#6310</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard=
-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/3070">i915#3070</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@gem_exec_balancer@parallel-=
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
105779v3/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#45=
25</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v=
3/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
779v3/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@gem_exec_fair@basic-none@vc=
s1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v=
3/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5779v3/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2876">i915#2876</=
a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk5/igt@gem_exec_fair@basic-pace@rc=
s0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2842">i915#2842</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl7/igt@gem_exec_suspend@basic-s3@s=
mem.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk5/igt@gem_exec_whisper@basic-fds-forked-all.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105779v3/shard-glk7/igt@gem_exec_whisper@basic-fds-forked-all.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6310">i=
915#6310</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb8/igt@gem_exec_whisper@basic-fds-priority-all.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105779v3/shard-iclb3/igt@gem_exec_whisper@basic-fds-priority-all.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
498">i915#5498</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@gem_lmem_swapping@heavy-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl9/igt@gem_lmem_swapping@heavy-ver=
ify-random-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk6/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@gem_userptr_blits@dmabuf-sy=
nc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1057=
79v3/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</=
a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk5/igt@i915_pm_rpm@gem-execbuf-str=
ess-pc8.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +127 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-apl3/igt@i915_suspend@debugfs-reader.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/s=
hard-apl2/igt@i915_suspend@debugfs-reader.html">DMESG-WARN</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105779v3/shard-skl3/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-tglb7/igt@kms_ccs@pipe-b-bad-aux-str=
ide-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_ccs@pipe-b-bad-pixel-f=
ormat-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk6/igt@kms_ccs@pipe-b-crc-primary-=
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
/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@kms_ccs@pipe-c-crc-primary-=
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
/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@kms_ccs@pipe-c-crc-sprite-p=
lanes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-tglb7/igt@kms_ccs@pipe-c-random-ccs-=
data-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk1/igt@kms_chamelium@dp-hpd-enable=
-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-snb7/igt@kms_chamelium@dp-hpd-for-ea=
ch-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_chamelium@hdmi-crc-mul=
tiple.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@kms_color_chamelium@pipe-c-=
ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@kms_color_chamelium@pipe-d-=
ctm-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@kms_content_protection@atom=
ic.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@kms_content_protection@srm.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-pwrite-4tiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl1/igt@kms_draw_crc@draw-method-xr=
gb8888-pwrite-4tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a>) +149 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk5/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl4/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/sha=
rd-skl6/igt@kms_fbcon_fbt@psr-suspend.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@b-e=
dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105779v3/shard-skl10/igt@kms_flip@plain-flip-ts-check-interrupt=
ible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-=
ytile-upscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk8/igt@kms_flip_scaled_crc@flip-32=
bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4911">i915#4911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_105779v3/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-64bpp-ytile-to-32bpp-ytile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/3701">i915#3701</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +2 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-apl7/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +47 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-snb7/igt@kms_frontbuffer_tracking@fb=
cpsr-rgb101010-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@kms_frontbuffer_tracking@ps=
r-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>) +128 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@=
pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl10/igt@kms_plane_alpha_blend@pipe=
-a-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk1/igt@kms_plane_alpha_blend@pipe-=
b-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk6/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-e=
dp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb6/igt@kms_plane_scaling@planes-unity-scaling-downsc=
ale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb2/igt@kms_plane_scal=
ing@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235<=
/a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl4/igt@kms_psr2_sf@overlay-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl9/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk1/igt@kms_psr2_su@page_flip-nv12.=
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
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-i=
clb7/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105779v3/shard-tglb1/igt@kms_psr_stress_test@flip-primary-in=
validate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5519">i915#5519</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@kms_writeback@writeback-che=
ck-output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@ioctl-errors:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl1/igt@prime_mmap_coherency@ioctl-errors.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1057=
79v3/shard-skl7/igt@prime_mmap_coherency@ioctl-errors.html">DMESG-FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6310">i915#6310=
</a>)</li>
</ul>
</li>
<li>
<p>igt@sw_sync@sync_multi_timeline_wait:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl1/igt@sw_sync@sync_multi_timeline=
_wait.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6140">i915#6140</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-glk6/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-kbl6/igt@sysfs_clients@fair-7.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_105779v3/shard-skl1/igt@sysfs_clients@split-10.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
1">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2994">i915#2994</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@fbdev@info.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6=
/igt@fbdev@info.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#62=
68</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_105779v3/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hostile:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-rkl-1/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#2410</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1057=
79v3/shard-rkl-5/igt@gem_ctx_persistence@hostile.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-tglb5/igt@gem_ctx_persistence@hostile.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#2410</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1057=
79v3/shard-tglb2/igt@gem_ctx_persistence@hostile.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-dg1-13/igt@gem_ctx_persistence@many-contexts.html">DMES=
G-FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105779v3/shard-dg1-16/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1057=
79v3/shard-tglu-1/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb6/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105779v3/shard-iclb2/igt@gem_exec_balancer@parallel-keep-subm=
it-fence.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
5779v3/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05779v3/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105=
779v3/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc.html">PASS</a> +4 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D110254">fdo#=
110254</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105779v3/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk8/igt@gem_exec_whisper@basic-contexts-priority-all.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_105779v3/shard-glk1/igt@gem_exec_whisper@basic-contexts-pr=
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
tip/Patchwork_105779v3/shard-glk5/igt@gem_exec_whisper@basic-fds-priority-a=
ll.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-d=
isplay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105779v3/shard-rkl-5/igt@gem_partial_pwrite_pread@writ=
es-after-reads-display.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-1/igt@gen9_exec_parse@secure-batches.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2527">i915#252=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
105779v3/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-8/igt@i915_module_load@reload-no-display.html">FAI=
L</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05779v3/shard-tglu-3/igt@i915_module_load@reload-no-display.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-5/igt@i915_pm_backlight@bad-brightness.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3=
012</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105779v3/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#2=
681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105779v3/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-5/igt@i915_pm_rpm@cursor-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v=
3/shard-rkl-6/igt@i915_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-dg1-18/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3=
/shard-dg1-12/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@drm-resources-equal:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@i915_pm_rpm@drm-resources-equal.html">SKIP</a=
> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109308">fdo#10=
9308</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105779v3/shard-rkl-6/igt@i915_pm_rpm@drm-resources-equal.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl7/igt@i915_pm_rpm@system-suspend-modeset.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5420"=
>i915#5420</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105779v3/shard-skl10/igt@i915_pm_rpm@system-suspend-modeset.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-snb4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#=
3921</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105779v3/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1845">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_big_fb@y-tiled-addfb-size=
-offset-overflow.html">PASS</a> +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-tglb1/igt@kms_big_fb@y-til=
ed-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a> +1 similar =
issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_color@pipe-a-ctm-max.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1149</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#184=
9</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4070">i9=
15#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/40=
98">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_105779v3/shard-rkl-6/igt@kms_color@pipe-a-ctm-max.html">PASS</a=
> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-red-to-blue:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-5/igt@kms_color@pipe-a-ctm-red-to-blue.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1149">i915#1=
149</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1849">=
i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_105779v3/shard-rkl-6/igt@kms_color@pipe-a-ctm-red-to-blue.htm=
l">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-glk8/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html"=
>FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105779v3/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor@toggle.html">P=
ASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-blt-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb2101010-blt-unti=
led.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111314">fdo#111314</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4098">i915#4098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/4369">i915#4369</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_draw_crc@draw-=
method-xrgb2101010-blt-untiled.html">PASS</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_fbcon_fbt@fbc.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/4098">i915#4098</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v=
3/shard-rkl-6/igt@kms_fbcon_fbt@fbc.html">PASS</a> +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915=
#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105779v3/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_105779v3/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-=
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
drm-tip/Patchwork_105779v3/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-i=
nterruptible@c-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5864">i915#5864</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105779v3/shard-skl7/igt@kms_flip@flip-vs-suspend-=
interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_105779v3/shard-kbl4/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +6=
 similar issues</li>
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
e/drm-tip/Patchwork_105779v3/shard-skl6/igt@kms_flip@plain-flip-fb-recreate=
-interruptible@a-edp1.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11825/shard-tglb7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_105779v3/shard-tglb2/igt@kms_flip@plain-flip-fb-recreate-int=
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
fx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb7/igt@kms_flip_scale=
d_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3701">i915#3701</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_flip_scaled_crc=
@flip-64bpp-ytile-to-16bpp-ytile-upscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right@pipe-b-p=
lanes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3558">i915#3558</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_plane@plane-panning-=
bottom-right@pipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparen=
t-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1849">i915#1849</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_plane_alpha_ble=
nd@pipe-b-alpha-transparent-fb.html">PASS</a> +1 similar issue</li>
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
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-iclb4/igt@kms_plan=
e_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html">PASS=
</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb6/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#1=
09642</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11106=
8">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_105779v3/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb1/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_105779v3/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1057=
79v3/shard-rkl-6/igt@kms_psr@sprite_plane_onoff.html">PASS</a> +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak-pipe-b:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-2/igt@kms_universal_plane@cursor-fb-leak-pipe-b.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/184=
5">i915#1845</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4098">i915#4098</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_105779v3/shard-rkl-6/igt@kms_universal_plane@cursor-=
fb-leak-pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-rpm:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglu-8/igt@kms_vblank@pipe-d-ts-continuation-modeset-rp=
m.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_105779v3/shard-tglu-3/igt@kms_vblank@pipe-d-ts-continuation-modes=
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
-tip/Patchwork_105779v3/shard-rkl-1/igt@perf@gen12-unprivileged-single-ctx-=
counters.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-rkl-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109295">fdo#109295</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3708">i91=
5#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105779v3/shard-rkl-5/igt@prime_vgem@basic-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6015"=
>i915#6015</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_105779v3/shard-tglb2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.h=
tml">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-kbl4/igt@sysfs_heartbeat_interval@precise@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1755">i=
915#1755</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_105779v3/shard-kbl6/igt@sysfs_heartbeat_interval@precise@vecs0.html"=
>PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb5/igt@gem_eio@kms.html">TIMEOUT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-t=
glb2/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_105779v3/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6117">i91=
5#6117</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11825/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2848">i915#2848=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
05779v3/shard-tglb2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (<a hr=
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
ork_105779v3/shard-iclb4/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#=
111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658=
">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11825/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11825/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11825/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11825/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_118=
25/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_11825/shard-kbl1/igt@runner@aborted.html">=
FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/92">i915#92</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10577=
9v3/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_105779v3/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl1/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_105779v3/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/shard-kbl7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_105779v3/shard-kbl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105779v3/sh=
ard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11825 -&gt; Patchwork_105779v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11825: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6551: a01ebaef40f1fa653e9d6a59b719f2d69af2b458 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105779v3: 3d881054a2b8614e37db0453c662ead2c0fafe8d @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1487657718964755380==--
