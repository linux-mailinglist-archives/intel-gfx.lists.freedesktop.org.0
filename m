Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DA01BAD04
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 20:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6179589F2E;
	Mon, 27 Apr 2020 18:41:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E720689ED3;
 Mon, 27 Apr 2020 18:41:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E01A6A47E8;
 Mon, 27 Apr 2020 18:41:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 27 Apr 2020 18:41:34 -0000
Message-ID: <158801289490.26356.18442321651413471948@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200427170325.23822-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200427170325.23822-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Verify_we_don=27t_submit_two_identical_tags_?=
 =?utf-8?b?KHJldjIp?=
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

Series: drm/i915/execlists: Verify we don't submit two identical tags (rev2)
URL   : https://patchwork.freedesktop.org/series/76558/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8374 -> Patchwork_17482
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17482 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17482, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17482:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_sync@basic-each:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-bsw-kefka/igt@gem_sync@basic-each.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-bsw-kefka/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live@blt:
    - fi-cml-u2:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-cml-u2/igt@i915_selftest@live@blt.html
    - fi-whl-u:           [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-whl-u/igt@i915_selftest@live@blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-whl-u/igt@i915_selftest@live@blt.html
    - fi-cfl-8700k:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-cfl-8700k/igt@i915_selftest@live@blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-cfl-8700k/igt@i915_selftest@live@blt.html
    - fi-skl-6600u:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-skl-6600u/igt@i915_selftest@live@blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-skl-6600u/igt@i915_selftest@live@blt.html
    - fi-cfl-8109u:       [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-cfl-8109u/igt@i915_selftest@live@blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-cfl-8109u/igt@i915_selftest@live@blt.html
    - fi-icl-u2:          [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-icl-u2/igt@i915_selftest@live@blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-icl-u2/igt@i915_selftest@live@blt.html
    - fi-icl-y:           [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-icl-y/igt@i915_selftest@live@blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-icl-y/igt@i915_selftest@live@blt.html
    - fi-kbl-8809g:       [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-kbl-8809g/igt@i915_selftest@live@blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-kbl-8809g/igt@i915_selftest@live@blt.html
    - fi-kbl-r:           [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-kbl-r/igt@i915_selftest@live@blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-kbl-r/igt@i915_selftest@live@blt.html
    - fi-skl-guc:         [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-skl-guc/igt@i915_selftest@live@blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-skl-guc/igt@i915_selftest@live@blt.html
    - fi-bdw-5557u:       [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-bdw-5557u/igt@i915_selftest@live@blt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-bdw-5557u/igt@i915_selftest@live@blt.html
    - fi-kbl-7500u:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-kbl-7500u/igt@i915_selftest@live@blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-kbl-7500u/igt@i915_selftest@live@blt.html
    - fi-kbl-x1275:       [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-kbl-x1275/igt@i915_selftest@live@blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-kbl-x1275/igt@i915_selftest@live@blt.html
    - fi-kbl-guc:         [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-kbl-guc/igt@i915_selftest@live@blt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-kbl-guc/igt@i915_selftest@live@blt.html
    - fi-tgl-y:           [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-tgl-y/igt@i915_selftest@live@blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-tgl-y/igt@i915_selftest@live@blt.html
    - fi-skl-lmem:        [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-skl-lmem/igt@i915_selftest@live@blt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-skl-lmem/igt@i915_selftest@live@blt.html
    - fi-cml-s:           [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-cml-s/igt@i915_selftest@live@blt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-cml-s/igt@i915_selftest@live@blt.html
    - fi-icl-guc:         [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-icl-guc/igt@i915_selftest@live@blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-icl-guc/igt@i915_selftest@live@blt.html
    - fi-cfl-guc:         [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-cfl-guc/igt@i915_selftest@live@blt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-cfl-guc/igt@i915_selftest@live@blt.html
    - fi-skl-6700k2:      [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-skl-6700k2/igt@i915_selftest@live@blt.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-skl-6700k2/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bxt-dsi:         [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@blt:
    - {fi-tgl-u}:         [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-tgl-u/igt@i915_selftest@live@blt.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-tgl-u/igt@i915_selftest@live@blt.html
    - {fi-tgl-dsi}:       [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-tgl-dsi/igt@i915_selftest@live@blt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-tgl-dsi/igt@i915_selftest@live@blt.html
    - {fi-ehl-1}:         [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-ehl-1/igt@i915_selftest@live@blt.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-ehl-1/igt@i915_selftest@live@blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17482 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@blt:
    - fi-bsw-nick:        [PASS][50] -> [INCOMPLETE][51] ([i915#392])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-bsw-nick/igt@i915_selftest@live@blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-bsw-nick/igt@i915_selftest@live@blt.html
    - fi-glk-dsi:         [PASS][52] -> [INCOMPLETE][53] ([i915#58] / [k.org#198133])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-glk-dsi/igt@i915_selftest@live@blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-glk-dsi/igt@i915_selftest@live@blt.html
    - fi-bsw-n3050:       [PASS][54] -> [INCOMPLETE][55] ([i915#392])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-bsw-n3050/igt@i915_selftest@live@blt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-bsw-n3050/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [PASS][56] -> [INCOMPLETE][57] ([CI#80])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-apl-guc:         [PASS][58] -> [INCOMPLETE][59] ([i915#1505])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8374/fi-apl-guc/igt@i915_selftest@live@hangcheck.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/fi-apl-guc/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1505]: https://gitlab.freedesktop.org/drm/intel/issues/1505
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (47 -> 43)
------------------------------

  Additional (1): fi-cml-u2 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8374 -> Patchwork_17482

  CI-20190529: 20190529
  CI_DRM_8374: 2473013ecc666fa73ec8dabb04f56ba71f840834 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5612: c8dc1fd926a550308b971ca7d83fe0a927a38152 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17482: 4717e3428eb46d17f3ee3ff75969f2a96d62efe4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4717e3428eb4 drm/i915/execlists: Verify we don't submit two identical tags

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17482/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
