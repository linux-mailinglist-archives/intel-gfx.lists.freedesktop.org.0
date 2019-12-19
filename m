Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF46126555
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 16:00:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90CF289A62;
	Thu, 19 Dec 2019 15:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6CF7689A5E;
 Thu, 19 Dec 2019 15:00:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA273A47DF;
 Thu, 19 Dec 2019 14:59:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Dec 2019 14:59:59 -0000
Message-ID: <157676759986.26199.4460745290709015843@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191219105043.4169050-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191219105043.4169050-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Track_engine_round-trip_times_=28rev5=29?=
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

Series: drm/i915/gt: Track engine round-trip times (rev5)
URL   : https://patchwork.freedesktop.org/series/69513/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7606 -> Patchwork_15839
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_15839:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - {fi-kbl-7560u}:     NOTRUN -> [WARN][1] +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/fi-kbl-7560u/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_15839 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][2] -> [TIMEOUT][3] ([i915#816])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  
#### Possible fixes ####

  * igt@gem_sync@basic-each:
    - {fi-tgl-u}:         [INCOMPLETE][4] ([i915#472] / [i915#707]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/fi-tgl-u/igt@gem_sync@basic-each.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/fi-tgl-u/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_blt:
    - fi-hsw-4770:        [DMESG-FAIL][6] ([i915#725]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [FAIL][8] ([fdo#111407]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  
#### Warnings ####

  * igt@i915_selftest@live_blt:
    - fi-ivb-3770:        [DMESG-FAIL][10] ([i915#563]) -> [DMESG-FAIL][11] ([i915#770])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/fi-ivb-3770/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/fi-ivb-3770/igt@i915_selftest@live_blt.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][12] ([i915#62] / [i915#92]) -> [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-x1275:       [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][15] ([i915#62] / [i915#92]) +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7606/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/fi-kbl-x1275/igt@kms_force_connector_basic@force-edid.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
  [i915#770]: https://gitlab.freedesktop.org/drm/intel/issues/770
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (44 -> 33)
------------------------------

  Additional (6): fi-hsw-4770r fi-skl-guc fi-bwr-2160 fi-kbl-7560u fi-byt-n2820 fi-skl-6600u 
  Missing    (17): fi-kbl-soraka fi-ilk-m540 fi-bsw-n3050 fi-hsw-peppy fi-glk-dsi fi-byt-squawks fi-bsw-cyan fi-ilk-650 fi-cfl-guc fi-gdg-551 fi-bsw-kefka fi-skl-lmem fi-blb-e6850 fi-tgl-y fi-kbl-r fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7606 -> Patchwork_15839

  CI-20190529: 20190529
  CI_DRM_7606: 24b56a2cafc20edb1284c6911ecabf1061cf75bc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_15839: fb4ea1918e3fced95b532fd89f556bfb2132b3d8 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fb4ea1918e3f drm/i915/gt: Track engine round-trip times

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15839/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
