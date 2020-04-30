Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 886AD1BFE9D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 16:40:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B246E916;
	Thu, 30 Apr 2020 14:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7AFCD6E913;
 Thu, 30 Apr 2020 14:40:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7397FA47E8;
 Thu, 30 Apr 2020 14:40:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Thu, 30 Apr 2020 14:40:26 -0000
Message-ID: <158825762644.31921.437852480338375296@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
In-Reply-To: <20200430135536.1141443-1-lionel.g.landwerlin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Add_support_for_multi_context_perf_queries_=28rev?=
 =?utf-8?q?4=29?=
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

Series: drm/i915/perf: Add support for multi context perf queries (rev4)
URL   : https://patchwork.freedesktop.org/series/76588/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8401 -> Patchwork_17528
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17528/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17528:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-7500u:       NOTRUN -> [{ABORT}][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17528/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_17528 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bwr-2160:        [INCOMPLETE][2] ([i915#489]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/fi-bwr-2160/igt@i915_selftest@live@gem_contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17528/fi-bwr-2160/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][4] ([fdo#109271]) -> [FAIL][5] ([i915#62] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17528/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (50 -> 44)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8401 -> Patchwork_17528

  CI-20190529: 20190529
  CI_DRM_8401: 41fac0e3809be301af095c66e717eb9843b80212 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5617: 807b26292a3f21057ef7865a4028d22c512590df @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17528: 097f8748f71f25cfc31d4791a530d75908aae7a9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

097f8748f71f drm/i915/perf: enable filtering on multiple contexts
23a516e1e12a drm/i915/perf: prepare driver to receive multiple ctx handles
5845f5921ffd drm/i915/perf: stop using the kernel context
a350ade77f42 drm/i915/perf: break OA config buffer object in 2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17528/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
