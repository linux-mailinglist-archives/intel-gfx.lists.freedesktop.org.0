Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB53F14DD88
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 16:06:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A26F6F9CD;
	Thu, 30 Jan 2020 15:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4EF186F9CC;
 Thu, 30 Jan 2020 15:06:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46B68A0119;
 Thu, 30 Jan 2020 15:06:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Jan 2020 15:06:49 -0000
Message-ID: <158039680928.21034.5528853693200239153@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200130123722.1867253-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200130123722.1867253-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Serialise_the_bound_vma_prior_to_suspend?=
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

Series: drm/i915: Serialise the bound vma prior to suspend
URL   : https://patchwork.freedesktop.org/series/72773/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7844 -> Patchwork_16335
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16335 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16335, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16335:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-r:           NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-kbl-r/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-8809g:       [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-guc:         [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-kbl-guc/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-kbl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-7500u:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-kbl-7500u/igt@gem_exec_suspend@basic-s0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-kbl-7500u/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-soraka:      [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-dsi:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-icl-dsi/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-icl-dsi/igt@gem_exec_suspend@basic-s0.html
    - fi-kbl-x1275:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-u2:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-icl-u2/igt@gem_exec_suspend@basic-s0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-icl-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-blb-e6850:       NOTRUN -> [INCOMPLETE][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-blb-e6850/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-peppy:       [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-hsw-peppy/igt@gem_exec_suspend@basic-s0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-hsw-peppy/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-4770r:       [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-hsw-4770r/igt@gem_exec_suspend@basic-s0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-hsw-4770r/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-y:           [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-icl-y/igt@gem_exec_suspend@basic-s0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-icl-y/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-8700k:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-cfl-8700k/igt@gem_exec_suspend@basic-s0.html
    - fi-ilk-650:         NOTRUN -> [INCOMPLETE][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-ilk-650/igt@gem_exec_suspend@basic-s0.html
    - fi-ivb-3770:        NOTRUN -> [INCOMPLETE][27]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-ivb-3770/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-u3:          [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-icl-u3/igt@gem_exec_suspend@basic-s0.html
    - fi-whl-u:           NOTRUN -> [INCOMPLETE][30]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-whl-u/igt@gem_exec_suspend@basic-s0.html
    - fi-cfl-guc:         [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-cfl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-hsw-4770:        [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-hsw-4770/igt@gem_exec_suspend@basic-s0.html
    - fi-icl-guc:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-icl-guc/igt@gem_exec_suspend@basic-s0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-icl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bwr-2160:        [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_16335 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-threads:
    - fi-hsw-4770:        [PASS][39] -> [TIMEOUT][40] ([fdo#112271] / [i915#1084])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-hsw-4770/igt@gem_close_race@basic-threads.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-hsw-4770/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-cml-u2:          [PASS][41] -> [INCOMPLETE][42] ([i915#283])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-cml-u2/igt@gem_exec_suspend@basic-s0.html
    - fi-pnv-d510:        [PASS][43] -> [INCOMPLETE][44] ([i915#299])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-pnv-d510/igt@gem_exec_suspend@basic-s0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-pnv-d510/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-6700k2:      [PASS][45] -> [INCOMPLETE][46] ([i915#198])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-skl-6700k2/igt@gem_exec_suspend@basic-s0.html
    - fi-elk-e7500:       [PASS][47] -> [INCOMPLETE][48] ([i915#66])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-elk-e7500/igt@gem_exec_suspend@basic-s0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-elk-e7500/igt@gem_exec_suspend@basic-s0.html
    - fi-skl-guc:         [PASS][49] -> [INCOMPLETE][50] ([i915#198])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-skl-guc/igt@gem_exec_suspend@basic-s0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-skl-guc/igt@gem_exec_suspend@basic-s0.html
    - fi-cml-s:           [PASS][51] -> [INCOMPLETE][52] ([i915#283])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-cml-s/igt@gem_exec_suspend@basic-s0.html
    - fi-bxt-dsi:         [PASS][53] -> [INCOMPLETE][54] ([fdo#103927])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-gdg-551:         [PASS][55] -> [INCOMPLETE][56] ([i915#172])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7844/fi-gdg-551/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/fi-gdg-551/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [i915#937]: https://gitlab.freedesktop.org/drm/intel/issues/937


Participating hosts (46 -> 40)
------------------------------

  Additional (8): fi-glk-dsi fi-ilk-650 fi-whl-u fi-ivb-3770 fi-cfl-8109u fi-blb-e6850 fi-skl-6600u fi-kbl-r 
  Missing    (14): fi-icl-1065g7 fi-ilk-m540 fi-bdw-5557u fi-bsw-n3050 fi-hsw-4200u fi-skl-6770hq fi-byt-squawks fi-bsw-cyan fi-snb-2520m fi-skl-lmem fi-kbl-7560u fi-byt-n2820 fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7844 -> Patchwork_16335

  CI-20190529: 20190529
  CI_DRM_7844: 47faa2a989ef89a15089190a5f942a2d2a34fda5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5407: a9d69f51dadbcbc53527671f87572d05c3370cba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16335: 1e39342a7afae8fa4d27b374241540eeeb81f584 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1e39342a7afa drm/i915: Serialise the bound vma prior to suspend

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16335/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
