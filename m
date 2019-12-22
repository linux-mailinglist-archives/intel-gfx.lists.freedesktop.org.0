Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E076129038
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 00:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFC46E11A;
	Sun, 22 Dec 2019 23:14:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 35F876E117;
 Sun, 22 Dec 2019 23:14:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C772A47DB;
 Sun, 22 Dec 2019 23:14:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 22 Dec 2019 23:14:11 -0000
Message-ID: <157705645115.8698.2614375606604947591@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191222213741.2102010-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191222213741.2102010-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Tidy_up_checking_active_timelines_during_retirement?=
 =?utf-8?q?_=28rev6=29?=
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

Series: drm/i915/gt: Tidy up checking active timelines during retirement (rev6)
URL   : https://patchwork.freedesktop.org/series/71266/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7623 -> Patchwork_15889
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_15889 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15889, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15889:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_active:
    - fi-hsw-4770r:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770r/igt@i915_selftest@live_active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-hsw-4770r/igt@i915_selftest@live_active.html

  * igt@i915_selftest@live_gtt:
    - fi-bwr-2160:        NOTRUN -> [FAIL][3] +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-bwr-2160/igt@i915_selftest@live_gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_15889 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][4] -> [TIMEOUT][5] ([i915#816])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-icl-u2:          [PASS][6] -> [FAIL][7] ([fdo#103375])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-icl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - fi-icl-u2:          [PASS][8] -> [FAIL][9] ([fdo#111550])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-icl-u2/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-bxt-dsi:         [PASS][10] -> [INCOMPLETE][11] ([fdo#103927])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-bxt-dsi/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [PASS][12] -> [DMESG-FAIL][13] ([i915#725])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-hsw-4770/igt@i915_selftest@live_blt.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - {fi-tgl-guc}:       [INCOMPLETE][14] ([i915#435]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-tgl-guc/igt@gem_close_race@basic-threads.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-tgl-guc/igt@gem_close_race@basic-threads.html

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-cfl-8700k:       [INCOMPLETE][16] ([i915#505]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-cfl-8700k/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_execlists:
    - fi-icl-u2:          [INCOMPLETE][18] ([fdo#112175] / [i915#140]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@i915_selftest@live_execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-icl-u2/igt@i915_selftest@live_execlists.html
    - fi-kbl-r:           [INCOMPLETE][20] ([fdo#112175] / [fdo#112259]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-r/igt@i915_selftest@live_execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-kbl-r/igt@i915_selftest@live_execlists.html

  
#### Warnings ####

  * igt@i915_module_load@reload-with-fault-injection:
    - fi-kbl-x1275:       [INCOMPLETE][22] -> [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-kbl-x1275/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][24] ([i915#725]) -> [DMESG-FAIL][25] ([i915#770])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [DMESG-WARN][26] ([IGT#4] / [i915#263]) -> [FAIL][27] ([fdo#103375])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-kbl-x1275:       [DMESG-WARN][28] ([i915#62] / [i915#92]) -> [DMESG-WARN][29] ([i915#62] / [i915#92] / [i915#95]) +11 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][30] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][31] ([i915#62] / [i915#92]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7623/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#4]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/4
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#111550]: https://bugs.freedesktop.org/show_bug.cgi?id=111550
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#263]: https://gitlab.freedesktop.org/drm/intel/issues/263
  [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
  [i915#505]: https://gitlab.freedesktop.org/drm/intel/issues/505
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (40 -> 41)
------------------------------

  Additional (9): fi-hsw-peppy fi-skl-guc fi-bwr-2160 fi-snb-2520m fi-kbl-7500u fi-whl-u fi-skl-lmem fi-byt-n2820 fi-skl-6600u 
  Missing    (8): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bdw-gvtdvm fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7623 -> Patchwork_15889

  CI-20190529: 20190529
  CI_DRM_7623: 08c8f85caff9f010e7c66e79a2b6fa8a4a230fc8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5352: 0586d205f651674e575351c2d5a7d0760716c9f1 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15889: c816a66091d65203a3f992259697501d5dfab6bc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c816a66091d6 drm/i915/gt: Tidy up checking active timelines during retirement

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15889/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
