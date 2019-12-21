Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F3F128A3C
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Dec 2019 16:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2F96E086;
	Sat, 21 Dec 2019 15:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C3D16E07D;
 Sat, 21 Dec 2019 15:57:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 833AFA0019;
 Sat, 21 Dec 2019 15:57:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 21 Dec 2019 15:57:24 -0000
Message-ID: <157694384450.32688.18264760094619305454@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191221144917.1040662-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191221144917.1040662-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJu?=
 =?utf-8?q?/i915=3A_Break_up_long_i915=5Fbuddy=5Ffree=5Flist=28=29_with_a_?=
 =?utf-8?q?cond=5Fresched=28=29?=
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

Series: drn/i915: Break up long i915_buddy_free_list() with a cond_resched()
URL   : https://patchwork.freedesktop.org/series/71248/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7617 -> Patchwork_15871
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/index.html

Known issues
------------

  Here are the changes found in Patchwork_15871 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][1] -> [TIMEOUT][2] ([i915#816])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-s:           [PASS][3] -> [FAIL][4] ([fdo#103375])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-cml-s/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][5] -> [FAIL][6] ([fdo#103375])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][7] -> [FAIL][8] ([fdo#111550])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][9] ([fdo#111593]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cml-s:           [DMESG-WARN][11] ([fdo#111764]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-cml-s/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-cml-s/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][13] ([fdo#111096] / [i915#323]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u3:          [INCOMPLETE][15] ([i915#140]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-icl-u3/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][17] ([i915#725]) -> [DMESG-FAIL][18] ([i915#563])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][19] ([IGT#4] / [i915#263]) -> [FAIL][20] ([fdo#103375])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][21] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][22] ([i915#62] / [i915#92]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92]) -> [DMESG-WARN][24] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 42)
------------------------------

  Additional (5): fi-hsw-peppy fi-whl-u fi-skl-lmem fi-blb-e6850 fi-skl-6600u 
  Missing    (8): fi-hsw-4770r fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-ctg-p8600 fi-byt-clapper fi-icl-dsi fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7617 -> Patchwork_15871

  CI-20190529: 20190529
  CI_DRM_7617: 69e01609b293c90f075f1ec63f2665c4714a477c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15871: 5ec4e55e9c468455ddab4843f821de6e7852af8c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5ec4e55e9c46 drn/i915: Break up long i915_buddy_free_list() with a cond_resched()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15871/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
