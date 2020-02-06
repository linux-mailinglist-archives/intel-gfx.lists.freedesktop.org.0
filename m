Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 967B5154415
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 13:33:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 290CE6EA5E;
	Thu,  6 Feb 2020 12:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6067B6EA50;
 Thu,  6 Feb 2020 12:33:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 583E2A0003;
 Thu,  6 Feb 2020 12:33:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 06 Feb 2020 12:33:08 -0000
Message-ID: <158099238833.15033.712888729342521337@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
In-Reply-To: <158096002290.14483.7984505581902713018@emeril.freedesktop.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Trim_blitter_block_size_=28rev3=29?=
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

Series: drm/i915/selftests: Trim blitter block size (rev3)
URL   : https://patchwork.freedesktop.org/series/73066/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7876 -> Patchwork_16455
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16455 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16455, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16455:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live_blt:
    - fi-whl-u:           [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-whl-u/igt@i915_selftest@live_blt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-whl-u/igt@i915_selftest@live_blt.html
    - fi-snb-2600:        NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-snb-2600/igt@i915_selftest@live_blt.html
    - fi-bdw-5557u:       [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bdw-5557u/igt@i915_selftest@live_blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-bdw-5557u/igt@i915_selftest@live_blt.html
    - fi-icl-u3:          [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-icl-u3/igt@i915_selftest@live_blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-icl-u3/igt@i915_selftest@live_blt.html
    - fi-cfl-8109u:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-cfl-8109u/igt@i915_selftest@live_blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-cfl-8109u/igt@i915_selftest@live_blt.html
    - fi-kbl-7500u:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-7500u/igt@i915_selftest@live_blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-kbl-7500u/igt@i915_selftest@live_blt.html
    - fi-kbl-guc:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-guc/igt@i915_selftest@live_blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-kbl-guc/igt@i915_selftest@live_blt.html
    - fi-kbl-8809g:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-8809g/igt@i915_selftest@live_blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-kbl-8809g/igt@i915_selftest@live_blt.html
    - fi-hsw-4770r:       [PASS][16] -> [DMESG-FAIL][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-4770r/igt@i915_selftest@live_blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-hsw-4770r/igt@i915_selftest@live_blt.html
    - fi-icl-guc:         [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-icl-guc/igt@i915_selftest@live_blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-icl-guc/igt@i915_selftest@live_blt.html
    - fi-kbl-r:           [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-r/igt@i915_selftest@live_blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-kbl-r/igt@i915_selftest@live_blt.html
    - fi-cfl-8700k:       [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-cfl-8700k/igt@i915_selftest@live_blt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-cfl-8700k/igt@i915_selftest@live_blt.html
    - fi-icl-u2:          [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-icl-u2/igt@i915_selftest@live_blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-icl-u2/igt@i915_selftest@live_blt.html
    - fi-kbl-x1275:       [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-kbl-x1275/igt@i915_selftest@live_blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-kbl-x1275/igt@i915_selftest@live_blt.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-FAIL][28]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-snb-2520m/igt@i915_selftest@live_blt.html
    - fi-icl-dsi:         [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-icl-dsi/igt@i915_selftest@live_blt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-icl-dsi/igt@i915_selftest@live_blt.html
    - fi-cfl-guc:         [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-cfl-guc/igt@i915_selftest@live_blt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-cfl-guc/igt@i915_selftest@live_blt.html
    - fi-bsw-n3050:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bsw-n3050/igt@i915_selftest@live_blt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-bsw-n3050/igt@i915_selftest@live_blt.html
    - fi-ivb-3770:        NOTRUN -> [DMESG-FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-ivb-3770/igt@i915_selftest@live_blt.html
    - fi-icl-y:           [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-icl-y/igt@i915_selftest@live_blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-icl-y/igt@i915_selftest@live_blt.html
    - fi-hsw-4770:        [PASS][38] -> [DMESG-FAIL][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-4770/igt@i915_selftest@live_blt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-hsw-4770/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_execlists:
    - fi-bsw-nick:        NOTRUN -> [DMESG-FAIL][40]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-bsw-nick/igt@i915_selftest@live_execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_16455 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-byt-j1900:       [PASS][41] -> [INCOMPLETE][42] ([i915#45])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-byt-j1900/igt@gem_close_race@basic-threads.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-byt-j1900/igt@gem_close_race@basic-threads.html

  * igt@i915_selftest@live_blt:
    - fi-skl-6770hq:      [PASS][43] -> [INCOMPLETE][44] ([fdo#112429])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-skl-6770hq/igt@i915_selftest@live_blt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-skl-6770hq/igt@i915_selftest@live_blt.html
    - fi-hsw-peppy:       [PASS][45] -> [DMESG-FAIL][46] ([i915#563])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-peppy/igt@i915_selftest@live_blt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-hsw-peppy/igt@i915_selftest@live_blt.html
    - fi-glk-dsi:         [PASS][47] -> [INCOMPLETE][48] ([i915#58] / [k.org#198133])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-glk-dsi/igt@i915_selftest@live_blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-glk-dsi/igt@i915_selftest@live_blt.html
    - fi-bsw-kefka:       [PASS][49] -> [DMESG-FAIL][50] ([i915#723])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bsw-kefka/igt@i915_selftest@live_blt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-bsw-kefka/igt@i915_selftest@live_blt.html
    - fi-skl-guc:         [PASS][51] -> [INCOMPLETE][52] ([fdo#112429])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-skl-guc/igt@i915_selftest@live_blt.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-skl-guc/igt@i915_selftest@live_blt.html
    - fi-cml-u2:          [PASS][53] -> [INCOMPLETE][54] ([i915#283])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-cml-u2/igt@i915_selftest@live_blt.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-cml-u2/igt@i915_selftest@live_blt.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-hsw-peppy:       [PASS][55] -> [DMESG-FAIL][56] ([i915#722])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-hsw-peppy/igt@i915_selftest@live_gem_contexts.html

  
#### Possible fixes ####

  * igt@i915_selftest@live_blt:
    - fi-bsw-nick:        [INCOMPLETE][57] ([i915#392]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-bsw-nick/igt@i915_selftest@live_blt.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-bsw-nick/igt@i915_selftest@live_blt.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-hsw-peppy:       [DMESG-WARN][59] ([i915#44]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7876/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/fi-hsw-peppy/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#112429]: https://bugs.freedesktop.org/show_bug.cgi?id=112429
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#563]: https://gitlab.freedesktop.org/drm/intel/issues/563
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
  [i915#723]: https://gitlab.freedesktop.org/drm/intel/issues/723
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (41 -> 46)
------------------------------

  Additional (8): fi-kbl-7560u fi-snb-2520m fi-gdg-551 fi-ivb-3770 fi-skl-6700k2 fi-blb-e6850 fi-skl-6600u fi-snb-2600 
  Missing    (3): fi-byt-squawks fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7876 -> Patchwork_16455

  CI-20190529: 20190529
  CI_DRM_7876: 6ac39d9964f464065511d439afcf4da065ff96db @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5421: 40946e61f9c47e23fdf1fff8090fadee8a4d7d3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16455: e67f881c2575d21072e5559eb52d6495066b95f0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e67f881c2575 drm/i915/selftests: Trim blitter block size

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16455/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
