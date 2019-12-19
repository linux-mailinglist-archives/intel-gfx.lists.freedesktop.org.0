Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF9A127009
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 22:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50D26EB9E;
	Thu, 19 Dec 2019 21:53:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C4D26EB9D;
 Thu, 19 Dec 2019 21:53:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 033A5A01BB;
 Thu, 19 Dec 2019 21:53:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Dec 2019 21:53:09 -0000
Message-ID: <157679238998.26201.5576651128429788397@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219204417.131219-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191219204417.131219-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Flush_engine-=3Eretire_on_virtual_engine_cleanup?=
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

Series: drm/i915/gt: Flush engine->retire on virtual engine cleanup
URL   : https://patchwork.freedesktop.org/series/71187/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7610 -> Patchwork_15848
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_15848 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15848, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15848:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live_execlists:
    - fi-skl-lmem:        [INCOMPLETE][1] ([i915#867]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-skl-lmem/igt@i915_selftest@live_execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-skl-lmem/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_15848 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#140])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-icl-dsi/igt@i915_selftest@live_execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-icl-dsi/igt@i915_selftest@live_execlists.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic:
    - fi-byt-n2820:       [FAIL][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-byt-n2820/igt@gem_exec_create@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-byt-n2820/igt@gem_exec_create@basic.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][7] ([fdo#111593]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [INCOMPLETE][9] ([i915#140]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([fdo#107139] / [i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([fdo#107139] / [i915#62] / [i915#92])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-kbl-x1275/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][13] ([i915#725]) -> [DMESG-FAIL][14] ([i915#553] / [i915#725])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][15] ([i915#722]) -> [INCOMPLETE][16] ([i915#45])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][17] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][18] ([i915#62] / [i915#92]) +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-x1275:       [DMESG-WARN][19] ([i915#62] / [i915#92]) -> [DMESG-WARN][20] ([i915#62] / [i915#92] / [i915#95]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7610/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#107139]: https://bugs.freedesktop.org/show_bug.cgi?id=107139
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#867]: https://gitlab.freedesktop.org/drm/intel/issues/867
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 34)
------------------------------

  Additional (3): fi-ilk-650 fi-gdg-551 fi-snb-2520m 
  Missing    (15): fi-hsw-4770r fi-ilk-m540 fi-bdw-5557u fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-kbl-7500u fi-ctg-p8600 fi-bdw-samus fi-byt-clapper fi-bsw-nick fi-skl-6600u fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7610 -> Patchwork_15848

  CI-20190529: 20190529
  CI_DRM_7610: 26117c3187bfcdee1f9501ff304f62252681d279 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15848: 9b679b5aeee8d1d2e714ca8615f1f36059e6af08 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b679b5aeee8 drm/i915/gt: Flush engine->retire on virtual engine cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15848/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
