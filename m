Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D691B4C24
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 19:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF6586E0ED;
	Wed, 22 Apr 2020 17:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 931E36E0AC;
 Wed, 22 Apr 2020 17:51:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8B354A0019;
 Wed, 22 Apr 2020 17:51:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Apr 2020 17:51:15 -0000
Message-ID: <158757787553.5178.9236386721645632102@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422160614.7126-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200422160614.7126-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Verify_context_isolation_=28rev2=29?=
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

Series: drm/i915/selftests: Verify context isolation (rev2)
URL   : https://patchwork.freedesktop.org/series/76339/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8350 -> Patchwork_17424
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17424 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17424, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17424:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6600u:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
    - fi-glk-dsi:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-glk-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-whl-u:           [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-whl-u/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-whl-u/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-bxt-dsi:         [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-bxt-dsi/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-8809g:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-kbl-8809g/igt@i915_selftest@live@gem_contexts.html
    - fi-icl-guc:         [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-icl-guc/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-icl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-kbl-soraka:      [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-kbl-soraka/igt@i915_selftest@live@gem_contexts.html
    - fi-bdw-5557u:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-bdw-5557u/igt@i915_selftest@live@gem_contexts.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-u}:         [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-tgl-u/igt@i915_selftest@live@gem_contexts.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-tgl-u/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_17424 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bsw-kefka:       [PASS][21] -> [INCOMPLETE][22] ([i915#392])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-n3050:       [PASS][23] -> [INCOMPLETE][24] ([i915#392])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-bsw-n3050/igt@i915_selftest@live@gem_contexts.html
    - fi-bsw-nick:        [PASS][25] -> [INCOMPLETE][26] ([i915#392])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-bsw-nick/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - fi-glk-dsi:         [PASS][27] -> [INCOMPLETE][28] ([i915#58] / [k.org#198133])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-glk-dsi/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@ring_submission:
    - fi-bwr-2160:        [PASS][29] -> [INCOMPLETE][30] ([i915#489])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-bwr-2160/igt@i915_selftest@live@ring_submission.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-bwr-2160/igt@i915_selftest@live@ring_submission.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [FAIL][31] ([i915#62]) -> [FAIL][32] ([i915#62] / [i915#95])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8350/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8350 -> Patchwork_17424

  CI-20190529: 20190529
  CI_DRM_8350: 018bab6d1c4ac37bff9306384383fab59750e140 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5606: 678afb3954bec6227c8762756a0ad6d9946d49b2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17424: 91ac23bb4db2efa063ea73f57dd4c3a925e49f67 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

91ac23bb4db2 drm/i915/selftests: Verify context isolation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17424/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
