Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3441311BBC1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 19:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FFC06EBAF;
	Wed, 11 Dec 2019 18:31:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 303036EBAF;
 Wed, 11 Dec 2019 18:31:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F86EA0087;
 Wed, 11 Dec 2019 18:31:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Date: Wed, 11 Dec 2019 18:31:48 -0000
Message-ID: <157608910810.30628.10333334698667126574@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191211124549.59516-1-michal.wajdeczko@intel.com>
In-Reply-To: <20191211124549.59516-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRHJv?=
 =?utf-8?q?p_some_explicit_params_in_uc=5Ffw_functions?=
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

Series: Drop some explicit params in uc_fw functions
URL   : https://patchwork.freedesktop.org/series/70758/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7543 -> Patchwork_15690
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/index.html

Known issues
------------

  Here are the changes found in Patchwork_15690 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {fi-tgl-u}:         [INCOMPLETE][1] ([fdo#111593]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/fi-tgl-u/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/fi-tgl-u/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-byt-n2820:       [DMESG-FAIL][3] ([i915#722]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_requests:
    - fi-ivb-3770:        [INCOMPLETE][5] ([i915#773]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/fi-ivb-3770/igt@i915_selftest@live_requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/fi-ivb-3770/igt@i915_selftest@live_requests.html

  * igt@kms_busy@basic-flip-pipe-a:
    - fi-kbl-soraka:      [DMESG-WARN][7] ([i915#95]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/fi-kbl-soraka/igt@kms_busy@basic-flip-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/fi-kbl-soraka/igt@kms_busy@basic-flip-pipe-a.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92]) -> [DMESG-WARN][10] ([i915#62] / [i915#92] / [i915#95]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/fi-kbl-x1275/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][11] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][12] ([i915#62] / [i915#92]) +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7543/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#773]: https://gitlab.freedesktop.org/drm/intel/issues/773
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (51 -> 47)
------------------------------

  Additional (3): fi-hsw-4770r fi-tgl-guc fi-tgl-y 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7543 -> Patchwork_15690

  CI-20190529: 20190529
  CI_DRM_7543: 91752f80df9b582561be6bbac12ef780b12f606c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5345: 9e0c82b6d70065db894ececf2be8de372e983cf0 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15690: e7754e7ef204ea021ac859bf33c76d9966eec920 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e7754e7ef204 drm/i915/uc: Drop explicit ggtt param in some uc_fw functions
02b707fc2f1c drm/i915/uc: Drop explicit gt param in some uc_fw functions
43fc69e59bc1 drm/i915/uc: Drop explicit i915 param in some uc_fw functions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15690/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
