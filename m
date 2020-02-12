Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF48015A7BF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 12:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F686EA87;
	Wed, 12 Feb 2020 11:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 849176EA7F;
 Wed, 12 Feb 2020 11:23:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C6C8A0099;
 Wed, 12 Feb 2020 11:23:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 12 Feb 2020 11:23:53 -0000
Message-ID: <158150663350.24266.16369697676960083297@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5/gem=5Fctx=5Fpersistence=3A_Race_context_closure_with_replace-?=
 =?utf-8?q?engines?=
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

Series: i915/gem_ctx_persistence: Race context closure with replace-engines
URL   : https://patchwork.freedesktop.org/series/73339/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7918 -> IGTPW_4135
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/index.html

Known issues
------------

  Here are the changes found in IGTPW_4135 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-byt-j1900:       [PASS][1] -> [FAIL][2] ([i915#694])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/fi-byt-j1900/igt@gem_close_race@basic-process.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/fi-byt-j1900/igt@gem_close_race@basic-process.html

  * igt@gem_close_race@basic-threads:
    - fi-hsw-peppy:       [PASS][3] -> [INCOMPLETE][4] ([i915#694] / [i915#816])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/fi-hsw-peppy/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/fi-hsw-peppy/igt@gem_close_race@basic-threads.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-cfl-8109u:       [PASS][5] -> [FAIL][6] ([fdo#103375])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/fi-cfl-8109u/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/fi-cfl-8109u/igt@gem_exec_suspend@basic-s3.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-ivb-3770:        [TIMEOUT][7] ([fdo#112271]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/fi-ivb-3770/igt@gem_close_race@basic-threads.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/fi-ivb-3770/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [SKIP][9] ([fdo#109271]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live_gem_contexts:
    - fi-cfl-guc:         [INCOMPLETE][11] ([fdo#106070] / [i915#424]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html

  * igt@i915_selftest@live_gt_heartbeat:
    - fi-bwr-2160:        [FAIL][13] -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/fi-bwr-2160/igt@i915_selftest@live_gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/fi-bwr-2160/igt@i915_selftest@live_gt_heartbeat.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [SKIP][15] ([fdo#109271]) -> [PASS][16] +27 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7918/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816


Participating hosts (49 -> 46)
------------------------------

  Additional (4): fi-skl-guc fi-byt-n2820 fi-bsw-nick fi-bsw-n3050 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5435 -> IGTPW_4135

  CI-20190529: 20190529
  CI_DRM_7918: d9dbc4c91c2c141a9492c88255231ef6aae6fbd9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4135: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/index.html
  IGT_5435: 2b6d4476dde53c363b8808ed9f0dd5547ac78641 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools



== Testlist changes ==

+igt@gem_ctx_persistence@close-replace-race

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4135/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
