Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E7C91965D6
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 12:41:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C8489D40;
	Sat, 28 Mar 2020 11:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D12A789CF6;
 Sat, 28 Mar 2020 11:41:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C66A8A011B;
 Sat, 28 Mar 2020 11:41:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 28 Mar 2020 11:41:36 -0000
Message-ID: <158539569678.10052.12811256899711297197@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200328091628.20381-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200328091628.20381-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Exercise_lite-restore_on_top_of_a_semaphore_?=
 =?utf-8?b?KHJldjMp?=
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

Series: drm/i915/selftests: Exercise lite-restore on top of a semaphore (rev3)
URL   : https://patchwork.freedesktop.org/series/75187/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8208 -> Patchwork_17123
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17123 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17123, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17123:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][10] -> [INCOMPLETE][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-1}:         [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-ehl-1/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_17123 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [PASS][14] -> [DMESG-WARN][15] ([i915#289])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][16] -> [INCOMPLETE][17] ([fdo#112259])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [PASS][18] -> [INCOMPLETE][19] ([i915#392])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         [PASS][20] -> [INCOMPLETE][21] ([i915#58] / [k.org#198133])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][22] -> [INCOMPLETE][23] ([fdo#112259])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [PASS][24] -> [INCOMPLETE][25] ([i915#140])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [PASS][26] -> [INCOMPLETE][27] ([i915#392])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
    - fi-bsw-n3050:       [PASS][28] -> [INCOMPLETE][29] ([i915#392])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][30] -> [INCOMPLETE][31] ([i915#283])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][32] -> [INCOMPLETE][33] ([fdo#112259])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][34] -> [INCOMPLETE][35] ([CI#80] / [fdo#112259])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][36] -> [INCOMPLETE][37] ([fdo#112259])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][38] ([fdo#108569]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-icl-y/igt@i915_selftest@live@execlists.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-icl-y/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - fi-icl-guc:         [INCOMPLETE][40] ([fdo#109644] / [fdo#110464]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8208/fi-icl-guc/igt@i915_selftest@live@requests.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/fi-icl-guc/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (43 -> 42)
------------------------------

  Additional (4): fi-hsw-4770r fi-hsw-4770 fi-skl-6600u fi-snb-2600 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8208 -> Patchwork_17123

  CI-20190529: 20190529
  CI_DRM_8208: 1934751f01410e7fe6978aadcb42b3a5a78b5300 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5543: 779d43cda49c230afd32c37730ad853f02e9d749 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17123: 43e7dc2aea3a7b5e8259909bf38129ab35e53853 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

43e7dc2aea3a drm/i915/selftests: Exercise lite-restore on top of a semaphore

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17123/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
