Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BFD3CBBE4
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 20:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2B596E9CD;
	Fri, 16 Jul 2021 18:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 125976E9CC;
 Fri, 16 Jul 2021 18:32:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00493AA916;
 Fri, 16 Jul 2021 18:32:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Fri, 16 Jul 2021 18:32:57 -0000
Message-ID: <162646037797.12779.3231775908564898542@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210714193419.1459723-1-jason@jlekstrand.net>
In-Reply-To: <20210714193419.1459723-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Get_rid_of_fence_error_propagation_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============0815644747=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0815644747==
Content-Type: multipart/alternative;
 boundary="===============5606541973439268647=="

--===============5606541973439268647==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Get rid of fence error propagation (rev5)
URL   : https://patchwork.freedesktop.org/series/90891/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10345_full -> Patchwork_20621_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20621_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20621_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20621_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen9_exec_parse@allowed-all:
    - shard-iclb:         NOTRUN -> [SKIP][1] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb6/igt@gen9_exec_parse@allowed-all.html
    - shard-tglb:         NOTRUN -> [SKIP][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb6/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
    - shard-skl:          [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html

  
#### Warnings ####

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglb:         [SKIP][5] ([i915#2527]) -> [SKIP][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb7/igt@gen9_exec_parse@bb-oversize.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb5/igt@gen9_exec_parse@bb-oversize.html
    - shard-iclb:         [SKIP][7] ([i915#2527]) -> [SKIP][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb5/igt@gen9_exec_parse@bb-oversize.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglb:         [SKIP][9] ([fdo#112306]) -> [SKIP][10] +13 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb2/igt@gen9_exec_parse@bb-start-param.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         [SKIP][11] ([i915#2856]) -> [SKIP][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb5/igt@gen9_exec_parse@shadow-peek.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb6/igt@gen9_exec_parse@shadow-peek.html
    - shard-iclb:         [SKIP][13] ([i915#2856]) -> [SKIP][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb5/igt@gen9_exec_parse@shadow-peek.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb5/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-iclb:         [SKIP][15] ([fdo#112306]) -> [SKIP][16] +13 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb2/igt@gen9_exec_parse@unaligned-access.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb7/igt@gen9_exec_parse@unaligned-access.html

  
Known issues
------------

  Here are the changes found in Patchwork_20621_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-2x:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#1839])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@feature_discovery@display-2x.html

  * igt@feature_discovery@display-4x:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#1839]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb1/igt@feature_discovery@display-4x.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([i915#658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb2/igt@feature_discovery@psr2.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][21] ([i915#3002])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl8/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#1099]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-snb7/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#280])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][24] -> [TIMEOUT][25] ([i915#3063])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@unwedge-stress:
    - shard-skl:          [PASS][26] -> [TIMEOUT][27] ([i915#2369] / [i915#3063])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl9/igt@gem_eio@unwedge-stress.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl8/igt@gem_eio@unwedge-stress.html
    - shard-snb:          NOTRUN -> [FAIL][28] ([i915#3354])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-snb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#2846])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
    - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#2846])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb6/igt@gem_exec_fair@basic-deadline.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#2846])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#2842]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][37] -> [FAIL][38] ([i915#2842]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][39] ([i915#2842]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109283]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@gem_exec_params@no-vebox.html
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#109283])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_schedule@independent@vcs0:
    - shard-kbl:          [PASS][42] -> [FAIL][43] ([i915#3795])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl4/igt@gem_exec_schedule@independent@vcs0.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl6/igt@gem_exec_schedule@independent@vcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][44] -> [INCOMPLETE][45] ([i915#155])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl4/igt@gem_exec_suspend@basic-s3.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][46] -> [FAIL][47] ([i915#307])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][48] ([i915#2658])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl7/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([i915#768]) +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
    - shard-glk:          NOTRUN -> [SKIP][50] ([fdo#109271]) +86 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk4/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#3323])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3323])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3297])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@gem_userptr_blits@unsync-overlap.html
    - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#3297])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-iclb:         NOTRUN -> [FAIL][55] ([i915#3318])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb7/igt@gem_userptr_blits@vma-merge.html
    - shard-tglb:         NOTRUN -> [FAIL][56] ([i915#3318])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          NOTRUN -> [FAIL][57] ([i915#3318])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl8/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl4/igt@gem_workarounds@suspend-resume.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl3/igt@gem_workarounds@suspend-resume.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109289]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb5/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][61] ([fdo#109271]) +339 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-snb5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         NOTRUN -> [FAIL][62] ([i915#454])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          NOTRUN -> [FAIL][63] ([i915#454])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#1937])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#1769])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [PASS][66] -> [DMESG-WARN][67] ([i915#118] / [i915#95]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3777]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#3777]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][70] ([i915#3722]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-glk:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3777])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][72] ([i915#3763])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111615]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb5/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3777])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#110723])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#3689]) +8 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#3742])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb7/igt@kms_cdclk@plane-scaling.html
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#3742])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl8/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109284] / [fdo#111827]) +13 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109278] / [i915#1149])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb4/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-max.html
    - shard-tglb:         NOTRUN -> [SKIP][84] ([fdo#109284] / [fdo#111827]) +11 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb5/igt@kms_color_chamelium@pipe-b-ctm-max.html
    - shard-snb:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +17 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-snb7/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-glk:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk4/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#3116])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([fdo#109300] / [fdo#111066])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][90] ([i915#1319]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@mei_interface:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#111828])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@kms_content_protection@mei_interface.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][92] ([i915#1319])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-skl:          [PASS][93] -> [FAIL][94] ([i915#3444])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][95] ([i915#180])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109278] / [fdo#109279])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#3359]) +5 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +125 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([fdo#109279] / [i915#3359]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109278]) +39 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb4/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109274] / [fdo#109278]) +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#2346] / [i915#533])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#2346])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +129 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - shard-iclb:         [PASS][107] -> [SKIP][108] ([i915#3788])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb5/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109274]) +6 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#79])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][112] -> [DMESG-WARN][113] ([i915#180]) +3 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [PASS][114] -> [INCOMPLETE][115] ([i915#146] / [i915#198])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][116] -> [FAIL][117] ([i915#2122]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2672])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][119] ([fdo#109285])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb4/igt@kms_force_connector_basic@force-load-detect.html
    - shard-tglb:         NOTRUN -> [SKIP][120] ([fdo#109285])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][121] ([fdo#111825]) +27 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][122] ([fdo#109280]) +26 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-skl:          [PASS][123] -> [DMESG-WARN][124] ([i915#1982])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][125] -> [FAIL][126] ([i915#1188])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][127] ([fdo#108145] / [i915#265])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][128] ([fdo#108145] / [i915#265]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][129] -> [FAIL][130] ([fdo#108145] / [i915#265])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][131] ([i915#265])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][132] ([i915#265])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][133] ([i915#265])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-skl:          NOTRUN -> [FAIL][134] ([i915#265])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#3794])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#112054])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_plane_lowres@pipe-c-tiling-none:
    - shard-iclb:         NOTRUN -> [SKIP][137] ([i915#3536]) +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb5/igt@kms_plane_lowres@pipe-c-tiling-none.html
    - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#3536]) +2 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb6/igt@kms_plane_lowre

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/index.html

--===============5606541973439268647==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Get rid of fence error propagation (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90891/">https://patchwork.freedesktop.org/series/90891/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10345_full -&gt; Patchwork_20621_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20621_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20621_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20621_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> +4 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb7/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb5/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb2/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> ([fdo#112306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb5/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb5/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> ([i915#2856]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb5/igt@gen9_exec_parse@shadow-peek.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb2/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> ([fdo#112306]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb7/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> +13 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20621_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@feature_discovery@display-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb1/igt@feature_discovery@display-4x.html">SKIP</a> ([i915#1839]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl8/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-snb7/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl9/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-snb2/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3354])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-tglb6/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-glk8/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@independent@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl4/igt@gem_exec_schedule@independent@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl6/igt@gem_exec_schedule@independent@vcs0.html">FAIL</a> ([i915#3795])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl3/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> ([i915#155])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl7/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-x-tiled:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk4/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html">SKIP</a> ([fdo#109271]) +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb1/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl8/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-kbl4/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl3/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb5/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-snb5/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([fdo#109271]) +339 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl8/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb3/igt@kms_atomic_transition@plane-all-modeset-transition.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3722]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb5/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> ([fdo#111615]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-data-yf_tiled_ccs.html">SKIP</a> ([i915#3689]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb7/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@kms_cdclk@plane-scaling.html">SKIP</a> ([i915#3742])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl8/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb4/igt@kms_color@pipe-d-ctm-max.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb5/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +11 similar issues</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-snb7/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +17 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk4/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb2/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb6/igt@kms_content_protection@legacy.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl3/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@kms_content_protection@mei_interface.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl6/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html">FAIL</a> ([i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-max-size-offscreen.html">SKIP</a> ([i915#3359]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html">SKIP</a> ([fdo#109271]) +125 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-512x512-onscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb4/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html">SKIP</a> ([fdo#109278]) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl6/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> ([fdo#109271]) +129 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-iclb5/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb2/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html">SKIP</a> ([i915#3788])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk5/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl7/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl3/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#111825]) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl5/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb2/igt@kms_plane_alpha_blend@pipe-c-coverage-vs-premult-vs-constant.html">SKIP</a> ([i915#3794])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-yf.html">SKIP</a> ([fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-none:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-iclb5/igt@kms_plane_lowres@pipe-c-tiling-none.html">SKIP</a> ([i915#3536]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20621/shard-tglb6/igt@kms_plane_lowre">SKIP</a> ([i915#3536]) +2 similar issues</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5606541973439268647==--

--===============0815644747==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0815644747==--
