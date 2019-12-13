Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D445511E329
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 13:05:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C83D6E52C;
	Fri, 13 Dec 2019 12:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2ABD36E52A;
 Fri, 13 Dec 2019 12:05:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22A31A0075;
 Fri, 13 Dec 2019 12:05:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Date: Fri, 13 Dec 2019 12:05:30 -0000
Message-ID: <157623873013.23800.7099978800349913418@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191213105050.y2v5nylsuxvc44jj@kili.mountain>
In-Reply-To: <20191213105050.y2v5nylsuxvc44jj@kili.mountain>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_remove_a_condition?=
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

Series: drm/i915/selftests: remove a condition
URL   : https://patchwork.freedesktop.org/series/70877/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7557 -> Patchwork_15740
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_15740 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_15740, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15740:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770r:       [DMESG-FAIL][1] ([i915#725]) -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-hsw-4770r/igt@i915_selftest@live_blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_15740 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-n2820:       [PASS][3] -> [TIMEOUT][4] ([i915#816])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-byt-n2820/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-byt-n2820/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-FAIL][6] ([i915#725])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-j1900:       [PASS][7] -> [DMESG-FAIL][8] ([i915#722])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_hangcheck:
    - fi-icl-u3:          [PASS][9] -> [INCOMPLETE][10] ([fdo#108569] / [i915#140])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-icl-u3/igt@i915_selftest@live_hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-icl-u3/igt@i915_selftest@live_hangcheck.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-bsw-kefka:       [PASS][11] -> [FAIL][12] ([i915#34])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-guc}:       [INCOMPLETE][13] ([fdo#111593]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-tgl-guc/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-tgl-guc/igt@gem_exec_gttfill@basic.html

  * igt@gem_sync@basic-each:
    - {fi-tgl-u}:         [INCOMPLETE][15] ([i915#472] / [i915#707]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-tgl-u/igt@gem_sync@basic-each.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-tgl-u/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [INCOMPLETE][17] ([i915#694]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_requests:
    - fi-hsw-4770:        [INCOMPLETE][19] ([i915#773]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-hsw-4770/igt@i915_selftest@live_requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-hsw-4770/igt@i915_selftest@live_requests.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][21] ([fdo#111096] / [i915#323]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@kms_busy@basic-flip-pipe-b:
    - fi-kbl-x1275:       [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][24] ([i915#62] / [i915#92]) +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-kbl-x1275/igt@kms_busy@basic-flip-pipe-b.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-kbl-x1275:       [DMESG-WARN][25] ([i915#62] / [i915#92]) -> [DMESG-WARN][26] ([i915#62] / [i915#92] / [i915#95]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7557/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#111096]: https://bugs.freedesktop.org/show_bug.cgi?id=111096
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#323]: https://gitlab.freedesktop.org/drm/intel/issues/323
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (54 -> 46)
------------------------------

  Missing    (8): fi-icl-1065g7 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7557 -> Patchwork_15740

  CI-20190529: 20190529
  CI_DRM_7557: a6596a7f6c774047468c78a42781e4bc17449c24 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5349: 048f58513d8b8ec6bb307a939f0ac959bc0f0e10 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15740: 898b71ebf29546113ac1894c42b4e4b7c6ed8476 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

898b71ebf295 drm/i915/selftests: remove a condition

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15740/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
