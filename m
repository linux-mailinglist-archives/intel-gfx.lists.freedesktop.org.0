Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44109126E7F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 21:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8556E3EC;
	Thu, 19 Dec 2019 20:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DF5E6E3EB;
 Thu, 19 Dec 2019 20:12:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 056FEA010F;
 Thu, 19 Dec 2019 20:12:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin King" <colin.king@canonical.com>
Date: Thu, 19 Dec 2019 20:12:53 -0000
Message-ID: <157678637399.26202.6773317091469705840@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219190916.24693-1-colin.king@canonical.com>
In-Reply-To: <20191219190916.24693-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_fix_uninitialized_pointer_reads_on_pointers_to_and_fro?=
 =?utf-8?q?m?=
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

Series: drm/i915: fix uninitialized pointer reads on pointers to and from
URL   : https://patchwork.freedesktop.org/series/71184/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7608 -> Patchwork_15847
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15847 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15847, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15847:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_execlists:
    - fi-icl-u3:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-icl-u3/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_15847 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live_gem_contexts:
    - fi-skl-lmem:        [PASS][2] -> [INCOMPLETE][3] ([i915#424])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-skl-lmem/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-icl-u2:          [PASS][4] -> [INCOMPLETE][5] ([i915#140])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-icl-u2/igt@kms_busy@basic-flip-pipe-a.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [TIMEOUT][6] ([i915#816]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][8] ([fdo#111593]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-icl-u3:          [INCOMPLETE][10] ([i915#140]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-u3/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-icl-u3/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][12] ([i915#725]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-bdw-5557u:       [INCOMPLETE][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-bdw-5557u/igt@i915_selftest@live_execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-bdw-5557u/igt@i915_selftest@live_execlists.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [INCOMPLETE][16] ([i915#694]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-dsi:         [INCOMPLETE][18] ([i915#140]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-icl-dsi/igt@kms_frontbuffer_tracking@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-icl-dsi/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][20] ([i915#553] / [i915#725]) -> [DMESG-FAIL][21] ([i915#725])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92]) -> [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) +4 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-a.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][24] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][25] ([i915#62] / [i915#92]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7608/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (51 -> 41)
------------------------------

  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-kbl-8809g fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7608 -> Patchwork_15847

  CI-20190529: 20190529
  CI_DRM_7608: f21c4c7ff253121180f4399271e55b81f06a3989 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15847: 9251c73b502cdce174107e06de70dc15289a3f70 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9251c73b502c drm/i915: fix uninitialized pointer reads on pointers to and from

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15847/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
