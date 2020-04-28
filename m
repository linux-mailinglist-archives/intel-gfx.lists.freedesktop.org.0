Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E247F1BBD3C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 14:15:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF2D6E1B4;
	Tue, 28 Apr 2020 12:15:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 609CF6E188;
 Tue, 28 Apr 2020 12:15:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 591B9A00E6;
 Tue, 28 Apr 2020 12:15:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 28 Apr 2020 12:15:36 -0000
Message-ID: <158807613633.17774.14990716184074347774@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428085336.9580-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200428085336.9580-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Avoid_reusing?=
 =?utf-8?q?_the_same_logical_CCID?=
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

Series: series starting with [1/2] drm/i915/execlists: Avoid reusing the same logical CCID
URL   : https://patchwork.freedesktop.org/series/76583/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8379 -> Patchwork_17490
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17490 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17490, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17490:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@blt:
    - fi-cml-u2:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-cml-u2/igt@i915_selftest@live@blt.html
    - fi-whl-u:           [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-whl-u/igt@i915_selftest@live@blt.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-whl-u/igt@i915_selftest@live@blt.html
    - fi-cfl-8700k:       [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-cfl-8700k/igt@i915_selftest@live@blt.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-cfl-8700k/igt@i915_selftest@live@blt.html
    - fi-skl-6600u:       [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-skl-6600u/igt@i915_selftest@live@blt.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-skl-6600u/igt@i915_selftest@live@blt.html
    - fi-cfl-8109u:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-cfl-8109u/igt@i915_selftest@live@blt.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-cfl-8109u/igt@i915_selftest@live@blt.html
    - fi-icl-u2:          [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-icl-u2/igt@i915_selftest@live@blt.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-icl-u2/igt@i915_selftest@live@blt.html
    - fi-icl-y:           [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-icl-y/igt@i915_selftest@live@blt.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-icl-y/igt@i915_selftest@live@blt.html
    - fi-kbl-8809g:       [PASS][14] -> [INCOMPLETE][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-kbl-8809g/igt@i915_selftest@live@blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-kbl-8809g/igt@i915_selftest@live@blt.html
    - fi-kbl-r:           [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-kbl-r/igt@i915_selftest@live@blt.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-kbl-r/igt@i915_selftest@live@blt.html
    - fi-skl-guc:         [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-skl-guc/igt@i915_selftest@live@blt.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-skl-guc/igt@i915_selftest@live@blt.html
    - fi-bdw-5557u:       [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-bdw-5557u/igt@i915_selftest@live@blt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-bdw-5557u/igt@i915_selftest@live@blt.html
    - fi-kbl-7500u:       [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-kbl-7500u/igt@i915_selftest@live@blt.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-kbl-7500u/igt@i915_selftest@live@blt.html
    - fi-kbl-x1275:       [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-kbl-x1275/igt@i915_selftest@live@blt.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-kbl-x1275/igt@i915_selftest@live@blt.html
    - fi-kbl-guc:         [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-kbl-guc/igt@i915_selftest@live@blt.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-kbl-guc/igt@i915_selftest@live@blt.html
    - fi-tgl-y:           [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-tgl-y/igt@i915_selftest@live@blt.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-tgl-y/igt@i915_selftest@live@blt.html
    - fi-skl-lmem:        [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-skl-lmem/igt@i915_selftest@live@blt.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-skl-lmem/igt@i915_selftest@live@blt.html
    - fi-cml-s:           [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-cml-s/igt@i915_selftest@live@blt.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-cml-s/igt@i915_selftest@live@blt.html
    - fi-icl-guc:         [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-icl-guc/igt@i915_selftest@live@blt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-icl-guc/igt@i915_selftest@live@blt.html
    - fi-cfl-guc:         [PASS][36] -> [INCOMPLETE][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-cfl-guc/igt@i915_selftest@live@blt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-cfl-guc/igt@i915_selftest@live@blt.html
    - fi-skl-6700k2:      [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-skl-6700k2/igt@i915_selftest@live@blt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-skl-6700k2/igt@i915_selftest@live@blt.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bxt-dsi:         [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-bxt-dsi/igt@i915_selftest@live@hangcheck.html
    - fi-bsw-nick:        [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-bsw-nick/igt@i915_selftest@live@hangcheck.html
    - fi-bsw-kefka:       [PASS][46] -> [INCOMPLETE][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-bsw-kefka/igt@i915_selftest@live@hangcheck.html
    - fi-bsw-n3050:       [PASS][48] -> [INCOMPLETE][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-bsw-n3050/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@blt:
    - {fi-tgl-u}:         [PASS][50] -> [INCOMPLETE][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-tgl-u/igt@i915_selftest@live@blt.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-tgl-u/igt@i915_selftest@live@blt.html
    - {fi-tgl-dsi}:       [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-tgl-dsi/igt@i915_selftest@live@blt.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-tgl-dsi/igt@i915_selftest@live@blt.html
    - {fi-ehl-1}:         [PASS][54] -> [INCOMPLETE][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-ehl-1/igt@i915_selftest@live@blt.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-ehl-1/igt@i915_selftest@live@blt.html

  
Known issues
------------

  Here are the changes found in Patchwork_17490 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-glk-dsi:         [PASS][56] -> [INCOMPLETE][57] ([i915#58] / [k.org#198133])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-glk-dsi/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_contexts:
    - fi-bwr-2160:        [INCOMPLETE][58] ([i915#1726] / [i915#489]) -> [PASS][59]
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8379/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1726]: https://gitlab.freedesktop.org/drm/intel/issues/1726
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 44)
------------------------------

  Additional (1): fi-cml-u2 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8379 -> Patchwork_17490

  CI-20190529: 20190529
  CI_DRM_8379: d33b3d1c05caaceef0a9cc7e5fa9e5f18fdd2e95 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17490: 0ae343650fc938eea0c6bd64e5bdcb403e974a58 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0ae343650fc9 drm/i915/execlists: Verify we don't submit two identical CCIDs
06036466a173 drm/i915/execlists: Avoid reusing the same logical CCID

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17490/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
