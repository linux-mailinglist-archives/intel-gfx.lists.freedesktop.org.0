Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BBD155C37
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C62916EAD5;
	Fri,  7 Feb 2020 16:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2D456EAD1;
 Fri,  7 Feb 2020 16:55:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3333A0118;
 Fri,  7 Feb 2020 16:55:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 07 Feb 2020 16:55:27 -0000
Message-ID: <158109452783.8754.1885029263179474721@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200207135048.2788199-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200207135048.2788199-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_force-probe_failure_message?=
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

Series: drm/i915: Fix force-probe failure message
URL   : https://patchwork.freedesktop.org/series/73149/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7886 -> Patchwork_16481
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/index.html

Known issues
------------

  Here are the changes found in Patchwork_16481 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#45])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@module-reload:
    - fi-skl-6770hq:      [PASS][3] -> [DMESG-WARN][4] ([i915#92]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-skl-6770hq/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [PASS][7] -> [INCOMPLETE][8] ([i915#424])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gtt:
    - fi-hsw-4770r:       [PASS][9] -> [TIMEOUT][10] ([fdo#112271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-hsw-4770r/igt@i915_selftest@live_gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-hsw-4770r/igt@i915_selftest@live_gtt.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [PASS][11] -> [DMESG-WARN][12] ([i915#44])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-skl-6770hq:      [PASS][13] -> [SKIP][14] ([fdo#109271]) +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-skl-6770hq:      [PASS][15] -> [DMESG-WARN][16] ([i915#106] / [i915#188])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-skl-6770hq/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@fds:
    - fi-byt-n2820:       [FAIL][17] ([i915#694]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-byt-n2820/igt@gem_exec_parallel@fds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-byt-n2820/igt@gem_exec_parallel@fds.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-y:           [DMESG-FAIL][19] ([fdo#108569]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-icl-y/igt@i915_selftest@live_execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-icl-y/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-kbl-x1275:       [DMESG-FAIL][21] ([i915#943]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
    - fi-byt-n2820:       [DMESG-FAIL][23] ([i915#1052]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_pm:
    - {fi-tgl-dsi}:       [DMESG-FAIL][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-tgl-dsi/igt@i915_selftest@live_gt_pm.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-tgl-dsi/igt@i915_selftest@live_gt_pm.html

  * igt@i915_selftest@live_gtt:
    - fi-bxt-dsi:         [TIMEOUT][27] ([fdo#112271]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7886/fi-bxt-dsi/igt@i915_selftest@live_gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/fi-bxt-dsi/igt@i915_selftest@live_gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
  [i915#106]: https://gitlab.freedesktop.org/drm/intel/issues/106
  [i915#188]: https://gitlab.freedesktop.org/drm/intel/issues/188
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943


Participating hosts (54 -> 48)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7886 -> Patchwork_16481

  CI-20190529: 20190529
  CI_DRM_7886: c76da740823aa950e340a8e53758511680da79ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5425: ad4542ef1adbaa1227bc9ba9e24bb0e0f6dd408d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16481: 870ff0886fb98f3fb360bc0adc9a08cb87fa9df1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

870ff0886fb9 drm/i915: Fix force-probe failure message

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16481/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
