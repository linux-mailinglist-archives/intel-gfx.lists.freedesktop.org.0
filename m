Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D52A5128026
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 16:56:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F3F56EC6D;
	Fri, 20 Dec 2019 15:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 83FC86E0ED;
 Fri, 20 Dec 2019 15:56:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7B6B9A47DB;
 Fri, 20 Dec 2019 15:56:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 20 Dec 2019 15:56:05 -0000
Message-ID: <157685736550.9210.9321721541433619008@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219092500.4134800-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191219092500.4134800-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Schedule_request_retirement_when_signaler_idles_=28?=
 =?utf-8?q?rev3=29?=
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

Series: drm/i915/gt: Schedule request retirement when signaler idles (rev3)
URL   : https://patchwork.freedesktop.org/series/71137/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7602_full -> Patchwork_15837_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15837_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15837_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15837_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-snb5/igt@i915_selftest@mock_requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-snb1/igt@i915_selftest@mock_requests.html
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb1/igt@i915_selftest@mock_requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb2/igt@i915_selftest@mock_requests.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-snb1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_15837_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [PASS][8] -> [INCOMPLETE][9] ([fdo#108838] / [i915#435])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb9/igt@gem_exec_create@forked.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb7/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@smoketest-bsd2:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#707])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd2.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb9/igt@gem_exec_schedule@smoketest-bsd2.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#644])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [PASS][14] -> [DMESG-WARN][15] ([i915#180]) +2 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-apl7/igt@gem_softpin@noreloc-s3.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-apl7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][16] -> [INCOMPLETE][17] ([i915#435] / [i915#472])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb7/igt@gem_sync@basic-store-each.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb4/igt@gem_sync@basic-store-each.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-tglb:         [PASS][18] -> [INCOMPLETE][19] ([i915#456] / [i915#460]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb5/igt@gem_workarounds@suspend-resume-context.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_selftest@mock_requests:
    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([fdo#112156] / [i915#198])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl1/igt@i915_selftest@mock_requests.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl4/igt@i915_selftest@mock_requests.html
    - shard-apl:          [PASS][22] -> [INCOMPLETE][23] ([fdo#103927])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-apl6/igt@i915_selftest@mock_requests.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-apl8/igt@i915_selftest@mock_requests.html
    - shard-kbl:          [PASS][24] -> [INCOMPLETE][25] ([fdo#103665])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-kbl6/igt@i915_selftest@mock_requests.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-kbl1/igt@i915_selftest@mock_requests.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][26] -> [DMESG-WARN][27] ([i915#109])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl2/igt@kms_color@pipe-a-ctm-0-25.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen:
    - shard-skl:          [PASS][28] -> [FAIL][29] ([i915#54]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-random:
    - shard-hsw:          [PASS][30] -> [DMESG-WARN][31] ([IGT#6])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-hsw1/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [PASS][32] -> [INCOMPLETE][33] ([i915#460]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#52] / [i915#54])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl4/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-glk:          [PASS][36] -> [FAIL][37] ([i915#34])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-glk5/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#34])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
    - shard-tglb:         [PASS][40] -> [FAIL][41] ([i915#49])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb9/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglb:         [PASS][42] -> [DMESG-WARN][43] ([i915#766])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][44] -> [INCOMPLETE][45] ([i915#456] / [i915#460] / [i915#474])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-tglb:         [INCOMPLETE][46] ([i915#456]) -> [PASS][47] +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb3/igt@gem_ctx_isolation@vecs0-s3.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb3/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [INCOMPLETE][48] ([i915#461]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][50] ([fdo#111735]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_sync@basic-many-each:
    - shard-tglb:         [INCOMPLETE][52] ([i915#472] / [i915#707]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb5/igt@gem_sync@basic-many-each.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb7/igt@gem_sync@basic-many-each.html

  * {igt@gen9_exec_parse@allowed-single}:
    - shard-skl:          [DMESG-WARN][54] ([i915#716]) -> [PASS][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl7/igt@gen9_exec_parse@allowed-single.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - shard-skl:          [DMESG-WARN][56] ([i915#109]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl1/igt@kms_color@pipe-b-ctm-0-75.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl4/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
    - shard-skl:          [FAIL][58] ([i915#54]) -> [PASS][59] +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled:
    - shard-skl:          [INCOMPLETE][60] ([i915#646] / [i915#667]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl5/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-render-untiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [FAIL][62] ([i915#79]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][64] ([i915#180]) -> [PASS][65] +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglb:         [INCOMPLETE][66] ([i915#435] / [i915#474] / [i915#667]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][68] ([i915#180]) -> [PASS][69] +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         [INCOMPLETE][70] ([i915#667]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-tglb:         [INCOMPLETE][72] ([i915#456] / [i915#460]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane@pixel-format-pipe-a-planes:
    - shard-skl:          [INCOMPLETE][74] ([i915#648] / [i915#667]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl8/igt@kms_plane@pixel-format-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][76] ([fdo#108145] / [i915#265]) -> [PASS][77] +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         [DMESG-WARN][78] ([i915#402]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb4/igt@kms_psr@psr2_suspend.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb5/igt@kms_psr@psr2_suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-suspend:
    - shard-tglb:         [INCOMPLETE][80] ([i915#460]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-tglb2/igt@kms_vblank@pipe-d-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@kms_plane@pixel-format-pipe-b-planes:
    - shard-skl:          [INCOMPLETE][82] ([i915#648]) -> [INCOMPLETE][83] ([i915#648] / [i915#667])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7602/shard-skl8/igt@kms_plane@pixel-format-pipe-b-planes.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/shard-skl7/igt@kms_plane@pixel-format-pipe-b-planes.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112156]: https://bugs.freedesktop.org/show_bug.cgi?id=112156
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
  [i915#648]: https://gitlab.freedesktop.org/drm/intel/issues/648
  [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7602 -> Patchwork_15837

  CI-20190529: 20190529
  CI_DRM_7602: 23aa8ababbd628f988e4bd487d8d87a5c8b809a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15837: efa1ee8a7e10c615260af376849deb800d79f66f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15837/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
