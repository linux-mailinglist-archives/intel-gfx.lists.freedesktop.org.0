Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 332531C0266
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 18:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698356E932;
	Thu, 30 Apr 2020 16:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB3276E932;
 Thu, 30 Apr 2020 16:25:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A491BA47DB;
 Thu, 30 Apr 2020 16:25:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 30 Apr 2020 16:25:55 -0000
Message-ID: <158826395564.31920.10899877855410388780@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/9=5D_Revert_=22drm/i915/tgl=3A_Include_r?=
 =?utf-8?q?o_parts_of_l3_to_invalidate=22?=
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

Series: series starting with [1/9] Revert "drm/i915/tgl: Include ro parts of l3 to invalidate"
URL   : https://patchwork.freedesktop.org/series/76777/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8401 -> Patchwork_17529
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17529:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-7500u:       NOTRUN -> [{ABORT}][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/fi-kbl-7500u/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_17529 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bwr-2160:        [INCOMPLETE][2] ([i915#489]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8401/fi-bwr-2160/igt@i915_selftest@live@gem_contexts.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/fi-bwr-2160/igt@i915_selftest@live@gem_contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (50 -> 44)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8401 -> Patchwork_17529

  CI-20190529: 20190529
  CI_DRM_8401: 41fac0e3809be301af095c66e717eb9843b80212 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5617: 807b26292a3f21057ef7865a4028d22c512590df @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17529: 987ed1f2f5ee6841ef96e02808b35fd17dc72028 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

987ed1f2f5ee drm/i915/gen12: Flush LLC
dda90d2bdc6d drm/i915/gen12: Invalidate media state
4289817480ba drm/i915/gen12: Wait on previous flush on invalidate
cdb89beff0e2 drm/i915/gen12: Invalidate indirect state pointers
abb852252bfa drm/i915/gen12: Flush AMFS
8411dc590177 drm/i915/gen12: Flush L3
868476e157a0 drm/i915/gen12: Add L3 fabric flush
7e235ad6db72 drm/i915/gen12: Fix HDC pipeline flush
53177bdb8662 Revert "drm/i915/tgl: Include ro parts of l3 to invalidate"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17529/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
