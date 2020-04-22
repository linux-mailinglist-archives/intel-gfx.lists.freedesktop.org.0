Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF671B4556
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 14:46:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 491866E9F3;
	Wed, 22 Apr 2020 12:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E5DD6E9F3;
 Wed, 22 Apr 2020 12:46:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 70218A00FD;
 Wed, 22 Apr 2020 12:46:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: bhanuprakash.modem@intel.com
Date: Wed, 22 Apr 2020 12:46:28 -0000
Message-ID: <158755958842.5177.18320272976971107495@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422110733.28635-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20200422110733.28635-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C1/3=5D_drm/dp=3A_DRM_DP_helper_for_re?=
 =?utf-8?q?ading_Ignore_MSA_from_DPCD?=
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

Series: series starting with [v5,1/3] drm/dp: DRM DP helper for reading Ignore MSA from DPCD
URL   : https://patchwork.freedesktop.org/series/76328/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8348 -> Patchwork_17419
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/index.html

Known issues
------------

  Here are the changes found in Patchwork_17419 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-cfl-8700k:       [PASS][1] -> [DMESG-FAIL][2] ([i915#666])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-cfl-8700k/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/fi-cfl-8700k/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@requests:
    - fi-bwr-2160:        [PASS][3] -> [INCOMPLETE][4] ([i915#1457])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-bwr-2160/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/fi-bwr-2160/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - fi-snb-2600:        [FAIL][5] ([i915#1763]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8348/fi-snb-2600/igt@i915_selftest@live@hugepages.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/fi-snb-2600/igt@i915_selftest@live@hugepages.html

  
  [i915#1457]: https://gitlab.freedesktop.org/drm/intel/issues/1457
  [i915#1763]: https://gitlab.freedesktop.org/drm/intel/issues/1763
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (48 -> 41)
------------------------------

  Missing    (7): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8348 -> Patchwork_17419

  CI-20190529: 20190529
  CI_DRM_8348: 71482e0c1b4ce12ad43e790a0c03d671caf1eb54 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17419: 6790cbe6f7e682d16b9a620be8130d6a2b5ace89 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6790cbe6f7e6 drm/i915/dp: Expose connector VRR info via debugfs
0e006133eca5 drm/i915/dp: Attach and set drm connector VRR property
1e772a99285c drm/dp: DRM DP helper for reading Ignore MSA from DPCD

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17419/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
