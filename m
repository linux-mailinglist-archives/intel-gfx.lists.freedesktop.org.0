Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF68718FC75
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 19:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2B589A5C;
	Mon, 23 Mar 2020 18:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F10C89A4A;
 Mon, 23 Mar 2020 18:09:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 788BEA008A;
 Mon, 23 Mar 2020 18:09:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Mar 2020 18:09:52 -0000
Message-ID: <158498699246.9808.7975153423647201213@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323161156.9732-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200323161156.9732-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Wait_until_the_context_is_finally_retired_before_r?=
 =?utf-8?q?eleasing_engines_=28rev3=29?=
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

Series: drm/i915/gem: Wait until the context is finally retired before releasing engines (rev3)
URL   : https://patchwork.freedesktop.org/series/74836/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8180 -> Patchwork_17058
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17058 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17058, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17058:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy-all:
    - fi-icl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-guc/igt@gem_busy@busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-icl-guc/igt@gem_busy@busy-all.html
    - fi-hsw-4770r:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-hsw-4770r/igt@gem_busy@busy-all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-hsw-4770r/igt@gem_busy@busy-all.html
    - fi-hsw-peppy:       NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-hsw-peppy/igt@gem_busy@busy-all.html
    - fi-snb-2520m:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-snb-2520m/igt@gem_busy@busy-all.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-snb-2520m/igt@gem_busy@busy-all.html
    - fi-ivb-3770:        [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-ivb-3770/igt@gem_busy@busy-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-ivb-3770/igt@gem_busy@busy-all.html
    - fi-blb-e6850:       NOTRUN -> [INCOMPLETE][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-blb-e6850/igt@gem_busy@busy-all.html
    - fi-hsw-4770:        [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-hsw-4770/igt@gem_busy@busy-all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-hsw-4770/igt@gem_busy@busy-all.html
    - fi-ilk-650:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-ilk-650/igt@gem_busy@busy-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-ilk-650/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-threads:
    - fi-skl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-skl-guc/igt@gem_close_race@basic-threads.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-skl-guc/igt@gem_close_race@basic-threads.html
    - fi-bwr-2160:        [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bwr-2160/igt@gem_close_race@basic-threads.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-bwr-2160/igt@gem_close_race@basic-threads.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-bdw-5557u/igt@gem_close_race@basic-threads.html
    - fi-icl-y:           [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-y/igt@gem_close_race@basic-threads.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-icl-y/igt@gem_close_race@basic-threads.html
    - fi-kbl-guc:         [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-guc/igt@gem_close_race@basic-threads.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-kbl-guc/igt@gem_close_race@basic-threads.html
    - fi-kbl-7500u:       NOTRUN -> [INCOMPLETE][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-kbl-7500u/igt@gem_close_race@basic-threads.html
    - fi-cfl-8109u:       [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-8109u/igt@gem_close_race@basic-threads.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-cfl-8109u/igt@gem_close_race@basic-threads.html
    - fi-kbl-r:           [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-r/igt@gem_close_race@basic-threads.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-kbl-r/igt@gem_close_race@basic-threads.html
    - fi-kbl-8809g:       [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-8809g/igt@gem_close_race@basic-threads.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-kbl-8809g/igt@gem_close_race@basic-threads.html
    - fi-kbl-soraka:      [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-soraka/igt@gem_close_race@basic-threads.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-kbl-soraka/igt@gem_close_race@basic-threads.html
    - fi-skl-6770hq:      [PASS][33] -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-skl-6770hq/igt@gem_close_race@basic-threads.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-skl-6770hq/igt@gem_close_race@basic-threads.html
    - fi-cfl-guc:         [PASS][35] -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-guc/igt@gem_close_race@basic-threads.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-cfl-guc/igt@gem_close_race@basic-threads.html
    - fi-skl-lmem:        NOTRUN -> [INCOMPLETE][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-skl-lmem/igt@gem_close_race@basic-threads.html
    - fi-icl-u2:          [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-u2/igt@gem_close_race@basic-threads.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-icl-u2/igt@gem_close_race@basic-threads.html
    - fi-skl-6700k2:      [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-skl-6700k2/igt@gem_close_race@basic-threads.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-skl-6700k2/igt@gem_close_race@basic-threads.html
    - fi-cfl-8700k:       [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cfl-8700k/igt@gem_close_race@basic-threads.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-cfl-8700k/igt@gem_close_race@basic-threads.html
    - fi-icl-dsi:         [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-icl-dsi/igt@gem_close_race@basic-threads.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-icl-dsi/igt@gem_close_race@basic-threads.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_busy@busy-all:
    - {fi-tgl-u}:         [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-tgl-u/igt@gem_busy@busy-all.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-tgl-u/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-threads:
    - {fi-ehl-1}:         [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-ehl-1/igt@gem_close_race@basic-threads.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-ehl-1/igt@gem_close_race@basic-threads.html

  
Known issues
------------

  Here are the changes found in Patchwork_17058 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-all:
    - fi-byt-n2820:       [PASS][50] -> [INCOMPLETE][51] ([i915#45])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-byt-n2820/igt@gem_busy@busy-all.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-byt-n2820/igt@gem_busy@busy-all.html
    - fi-pnv-d510:        [PASS][52] -> [INCOMPLETE][53] ([i915#299])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-pnv-d510/igt@gem_busy@busy-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-pnv-d510/igt@gem_busy@busy-all.html
    - fi-byt-j1900:       [PASS][54] -> [INCOMPLETE][55] ([i915#45])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-byt-j1900/igt@gem_busy@busy-all.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-byt-j1900/igt@gem_busy@busy-all.html
    - fi-bxt-dsi:         [PASS][56] -> [INCOMPLETE][57] ([fdo#103927])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bxt-dsi/igt@gem_busy@busy-all.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-bxt-dsi/igt@gem_busy@busy-all.html

  * igt@gem_close_race@basic-threads:
    - fi-bsw-kefka:       [PASS][58] -> [INCOMPLETE][59] ([i915#392])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bsw-kefka/igt@gem_close_race@basic-threads.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-bsw-kefka/igt@gem_close_race@basic-threads.html
    - fi-glk-dsi:         [PASS][60] -> [INCOMPLETE][61] ([i915#58] / [k.org#198133])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-glk-dsi/igt@gem_close_race@basic-threads.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-glk-dsi/igt@gem_close_race@basic-threads.html
    - fi-kbl-x1275:       [PASS][62] -> [INCOMPLETE][63] ([CI#80])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-kbl-x1275/igt@gem_close_race@basic-threads.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-kbl-x1275/igt@gem_close_race@basic-threads.html
    - fi-cml-s:           [PASS][64] -> [INCOMPLETE][65] ([i915#283])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-s/igt@gem_close_race@basic-threads.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-cml-s/igt@gem_close_race@basic-threads.html
    - fi-bsw-n3050:       [PASS][66] -> [INCOMPLETE][67] ([i915#392])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-bsw-n3050/igt@gem_close_race@basic-threads.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-bsw-n3050/igt@gem_close_race@basic-threads.html
    - fi-cml-u2:          [PASS][68] -> [INCOMPLETE][69] ([i915#283])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-cml-u2/igt@gem_close_race@basic-threads.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-cml-u2/igt@gem_close_race@basic-threads.html
    - fi-apl-guc:         [PASS][70] -> [INCOMPLETE][71] ([fdo#103927])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8180/fi-apl-guc/igt@gem_close_race@basic-threads.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/fi-apl-guc/igt@gem_close_race@basic-threads.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#45]: https://gitlab.freedesktop.org/drm/intel/issues/45
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (40 -> 44)
------------------------------

  Additional (9): fi-bdw-5557u fi-hsw-peppy fi-kbl-7500u fi-gdg-551 fi-elk-e7500 fi-skl-lmem fi-blb-e6850 fi-bsw-nick fi-snb-2600 
  Missing    (5): fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8180 -> Patchwork_17058

  CI-20190529: 20190529
  CI_DRM_8180: 257af0ddcea3a234dcb79579600f971edd47353f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5530: 2020d743940f06294d06006bb737be43fcd2881e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17058: 50c51a7776697e81a8ee26e24e7a8d4ef34ba2fc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

50c51a777669 drm/i915/gem: Wait until the context is finally retired before releasing engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17058/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
