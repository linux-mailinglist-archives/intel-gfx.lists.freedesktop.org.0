Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F8E3606FB
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 12:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF5B26EA27;
	Thu, 15 Apr 2021 10:21:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 042F46EA1C;
 Thu, 15 Apr 2021 10:21:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EBDACA00CC;
 Thu, 15 Apr 2021 10:21:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jun Miao" <jun.miao@windriver.com>
Date: Thu, 15 Apr 2021 10:21:40 -0000
Message-ID: <161848210092.1080.7208700085227100005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210414144828.22813-1-jun.miao@windriver.com>
In-Reply-To: <20210414144828.22813-1-jun.miao@windriver.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Fix_a_lockdep_warning_on_RT_kernel?=
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
Content-Type: multipart/mixed; boundary="===============1590336491=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1590336491==
Content-Type: multipart/alternative;
 boundary="===============2415241881569215812=="

--===============2415241881569215812==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Fix a lockdep warning on RT kernel
URL   : https://patchwork.freedesktop.org/series/89108/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9973 -> Patchwork_19941
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19941 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19941, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19941:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_create@basic:
    - fi-ivb-3770:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-ivb-3770/igt@gem_exec_create@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-ivb-3770/igt@gem_exec_create@basic.html

  * igt@gem_exec_fence@basic-busy@rcs0:
    - fi-kbl-x1275:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@rcs0.html

  * igt@gem_exec_fence@basic-busy@vecs0:
    - fi-cfl-8700k:       [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cml-s:           [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html
    - fi-cfl-guc:         [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html

  * igt@gem_exec_fence@basic-wait@rcs0:
    - fi-bsw-n3050:       [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-n3050/igt@gem_exec_fence@basic-wait@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-n3050/igt@gem_exec_fence@basic-wait@rcs0.html

  * igt@gem_exec_fence@basic-wait@vcs0:
    - fi-skl-6700k2:      [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-skl-6700k2/igt@gem_exec_fence@basic-wait@vcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6700k2/igt@gem_exec_fence@basic-wait@vcs0.html

  * igt@gem_exec_gttfill@basic:
    - fi-skl-guc:         [PASS][15] -> [DMESG-WARN][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-skl-guc/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-guc/igt@gem_exec_gttfill@basic.html
    - fi-hsw-4770:        [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-hsw-4770/igt@gem_exec_gttfill@basic.html
    - fi-tgl-u2:          [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-u2/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-u2/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@fds:
    - fi-apl-guc:         [PASS][21] -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_selftest@live@dmabuf:
    - fi-snb-2520m:       [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-snb-2520m/igt@i915_selftest@live@dmabuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-snb-2520m/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@execlists:
    - fi-glk-dsi:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-FAIL][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][28] -> [DMESG-FAIL][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][30] -> [DMESG-WARN][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][32] -> [DMESG-FAIL][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-bsw-nick:        [PASS][34] -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-bsw-nick:        [PASS][36] -> [DMESG-FAIL][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-icl-y:           NOTRUN -> [DMESG-FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bxt-dsi:         [PASS][39] -> [DMESG-FAIL][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html
    - fi-icl-u2:          [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-icl-u2:          [PASS][43] -> [DMESG-WARN][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-u2/igt@i915_selftest@live@gt_pm.html
    - fi-bxt-dsi:         [PASS][45] -> [DMESG-WARN][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-kbl-guc:         [PASS][47] -> [DMESG-WARN][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-guc/igt@i915_selftest@live@gt_timelines.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-guc/igt@i915_selftest@live@gt_timelines.html
    - fi-kbl-r:           [PASS][49] -> [DMESG-WARN][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-r/igt@i915_selftest@live@gt_timelines.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-r/igt@i915_selftest@live@gt_timelines.html
    - fi-cfl-8109u:       [PASS][51] -> [DMESG-WARN][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cfl-8109u/igt@i915_selftest@live@gt_timelines.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8109u/igt@i915_selftest@live@gt_timelines.html
    - fi-icl-y:           NOTRUN -> [DMESG-WARN][53]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@i915_selftest@live@gt_timelines.html
    - fi-bsw-kefka:       [PASS][54] -> [DMESG-WARN][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-cml-u2:          [PASS][56] -> [DMESG-WARN][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-u2/igt@i915_selftest@live@hangcheck.html
    - fi-skl-6600u:       NOTRUN -> [DMESG-WARN][58]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-8809g:       [PASS][59] -> [DMESG-WARN][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html
    - fi-glk-dsi:         [PASS][61] -> [DMESG-WARN][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
    - fi-tgl-y:           [PASS][63] -> [DMESG-WARN][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-y/igt@i915_selftest@live@hangcheck.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-y/igt@i915_selftest@live@hangcheck.html
    - fi-kbl-soraka:      [PASS][65] -> [DMESG-WARN][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@mman:
    - fi-snb-2520m:       [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-snb-2520m/igt@i915_selftest@live@mman.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-snb-2520m/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@ring_submission:
    - fi-kbl-7500u:       [PASS][69] -> [DMESG-FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-7500u/igt@i915_selftest@live@ring_submission.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7500u/igt@i915_selftest@live@ring_submission.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][71]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-n3050/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][72]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-u2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_contexts:
    - {fi-rkl-11500t}:    [PASS][73] -> [DMESG-FAIL][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-rkl-11500t/igt@i915_selftest@live@gt_contexts.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-rkl-11500t/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_engines:
    - {fi-tgl-dsi}:       [PASS][75] -> [DMESG-WARN][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-dsi/igt@i915_selftest@live@gt_engines.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-dsi/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_timelines:
    - {fi-tgl-dsi}:       [PASS][77] -> [INCOMPLETE][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html
    - {fi-rkl-11500t}:    [PASS][79] -> [DMESG-WARN][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-rkl-11500t/igt@i915_selftest@live@gt_timelines.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-rkl-11500t/igt@i915_selftest@live@gt_timelines.html
    - {fi-ehl-1}:         [PASS][81] -> [DMESG-WARN][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-ehl-1/igt@i915_selftest@live@gt_timelines.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-ehl-1/igt@i915_selftest@live@gt_timelines.html

  * igt@runner@aborted:
    - {fi-rkl-11500t}:    NOTRUN -> [FAIL][83]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-rkl-11500t/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19941 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [PASS][84] -> [DMESG-WARN][85] ([i915#2605])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-y:           NOTRUN -> [SKIP][86] ([i915#2190])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@execlists:
    - fi-tgl-y:           [PASS][87] -> [INCOMPLETE][88] ([i915#2268])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-y/igt@i915_selftest@live@execlists.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-y/igt@i915_selftest@live@execlists.html
    - fi-kbl-7567u:       [PASS][89] -> [INCOMPLETE][90] ([i915#2782] / [i915#794])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-7567u/igt@i915_selftest@live@execlists.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7567u/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][91] -> [INCOMPLETE][92] ([i915#2782] / [i915#794])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_contexts:
    - fi-kbl-guc:         [PASS][93] -> [DMESG-FAIL][94] ([i915#2927])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-guc/igt@i915_selftest@live@gt_contexts.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-guc/igt@i915_selftest@live@gt_contexts.html
    - fi-bsw-kefka:       [PASS][95] -> [DMESG-FAIL][96] ([i915#2927])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html
    - fi-kbl-r:           [PASS][97] -> [DMESG-FAIL][98] ([i915#2927])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-r/igt@i915_selftest@live@gt_contexts.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-r/igt@i915_selftest@live@gt_contexts.html
    - fi-cfl-8109u:       [PASS][99] -> [DMESG-FAIL][100] ([i915#2927])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-y:           NOTRUN -> [SKIP][101] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-y:           NOTRUN -> [SKIP][102] ([fdo#109285])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-icl-y:           NOTRUN -> [SKIP][103] ([fdo#109278])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-icl-y:           NOTRUN -> [SKIP][104] ([fdo#110189]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-skl-6600u:       NOTRUN -> [SKIP][105] ([fdo#109271])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@prime_vgem@basic-userptr.html
    - fi-icl-y:           NOTRUN -> [SKIP][106] ([i915#3301])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][107] ([i915#2426])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][108] ([i915#1436])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][109] ([i915#2426])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8700k/igt@runner@aborted.html
    - fi-tgl-y:           NOTRUN -> [FAIL][110] ([i915#1436] / [i915#2966])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-y/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][111] ([i915#1436] / [i915#2426])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][112] ([i915#2426])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][113] ([i915#2426] / [i915#2782])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][114] ([i915#2426] / [k.org#202321])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][115] ([i915#1436])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-nick/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][116] ([i915#2426])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-snb-2520m/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][117] ([i915#1436] / [i915#2426])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][118] ([i915#1436] / [i915#2426])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][119] ([i915#2505])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-hsw-4770/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][120] ([i915#1436] / [i915#2426])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][121] ([i915#1436] / [i915#2426])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][122] ([i915#2082] / [i915#2426])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-u2/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][123] ([i915#2426])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-ivb-3770/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][124] ([i915#2426])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][125] ([i915#2082] / [i915#2426])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][126] ([i915#2426])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][127] ([i915#2782])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][128] ([i915#1436] / [i915#2426])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][129] ([i915#1186] / [i915#2426])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][130] ([i915#2426])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-skl-6600u:       [INCOMPLETE][131] ([i915#198]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][133] ([fdo#109271]) -> [FAIL][134] ([i915#579])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][135] ([i915#2947]) -> [FAIL][136] ([i915#1436] / [i915#2426])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-8809g/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-8809g/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][137] ([i915#2426]) -> [FAIL][138] ([i915#2426] / [i915#3364] / [i915#337])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-apl-guc/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2947]: https://gitlab.freedesktop.org/drm/intel/issues/2947
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3364]: https://gitlab.freedesktop.org/drm/intel/issues/3364
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (44 -> 42)
------------------------------

  Additional (1): fi-icl-y 
  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9973 -> Patchwork_19941

  CI-20190529: 20190529
  CI_DRM_9973: c543cf1cd8aa633c69d649a77c5419da7e715c8b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6066: 870601e7fb4aa8dcb118fd99833d07ce3dd2ea88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19941: f15c470fe6c31ddbee34b7f908271f7a85ad95ad @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f15c470fe6c3 drm/i915/gt: Fix a lockdep warning on RT kernel

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/index.html

--===============2415241881569215812==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Fix a lockdep warning on RT kernel</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89108/">https://patchwork.freedesktop.org/series/89108/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9973 -&gt; Patchwork_19941</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19941 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19941, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19941:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-ivb-3770/igt@gem_exec_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-ivb-3770/igt@gem_exec_create@basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@rcs0:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-x1275/igt@gem_exec_fence@basic-busy@rcs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@vecs0:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8700k/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-s/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-guc/igt@gem_exec_fence@basic-busy@vecs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@rcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-n3050/igt@gem_exec_fence@basic-wait@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-n3050/igt@gem_exec_fence@basic-wait@rcs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@vcs0:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-skl-6700k2/igt@gem_exec_fence@basic-wait@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6700k2/igt@gem_exec_fence@basic-wait@vcs0.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-skl-guc/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-guc/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-hsw-4770/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-hsw-4770/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-u2/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-u2/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-apl-guc/igt@gem_exec_parallel@engines@fds.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-snb-2520m/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-snb-2520m/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-glk-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-glk-dsi/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cml-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-8809g/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-8809g/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@i915_selftest@live@gt_contexts.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bxt-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-u2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-icl-u2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-u2/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bxt-dsi/igt@i915_selftest@live@gt_pm.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-guc/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-r/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-r/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cfl-8109u/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8109u/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-kefka/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-u2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-8809g/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-y/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-soraka/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-snb-2520m/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-snb-2520m/igt@i915_selftest@live@mman.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-7500u/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7500u/igt@i915_selftest@live@ring_submission.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-rkl-11500t/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-rkl-11500t/igt@i915_selftest@live@gt_contexts.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-dsi/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-dsi/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-dsi/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-rkl-11500t/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-rkl-11500t/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-ehl-1/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-ehl-1/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-rkl-11500t/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19941 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-tgl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-7567u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7567u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-guc/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-guc/igt@i915_selftest@live@gt_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-kefka/igt@i915_selftest@live@gt_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-r/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-r/igt@i915_selftest@live@gt_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8109u/igt@i915_selftest@live@gt_contexts.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-tgl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2966">i915#2966</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-skl-6600u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2947">i915#2947</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9973/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19941/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3364">i915#3364</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 42)</h2>
<p>Additional (1): fi-icl-y <br />
  Missing    (3): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9973 -&gt; Patchwork_19941</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9973: c543cf1cd8aa633c69d649a77c5419da7e715c8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6066: 870601e7fb4aa8dcb118fd99833d07ce3dd2ea88 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19941: f15c470fe6c31ddbee34b7f908271f7a85ad95ad @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f15c470fe6c3 drm/i915/gt: Fix a lockdep warning on RT kernel</p>

</body>
</html>

--===============2415241881569215812==--

--===============1590336491==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1590336491==--
