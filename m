Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 870BA1CFDF7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 21:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5086E971;
	Tue, 12 May 2020 19:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2CE56E971;
 Tue, 12 May 2020 19:05:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E45E9A0091;
 Tue, 12 May 2020 19:05:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swathi Dhanavanthri" <swathi.dhanavanthri@intel.com>
Date: Tue, 12 May 2020 19:05:51 -0000
Message-ID: <158931035190.18141.1048433180490464012@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200512180050.6785-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200512180050.6785-1-swathi.dhanavanthri@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Restrict_w/a_1607087056_for_EHL/JSL?=
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

Series: drm/i915/ehl: Restrict w/a 1607087056 for EHL/JSL
URL   : https://patchwork.freedesktop.org/series/77199/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8470 -> Patchwork_17636
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17636 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17636, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17636/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17636:

### IGT changes ###

#### Warnings ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bwr-2160:        [SKIP][1] ([fdo#109271]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-bwr-2160/igt@amdgpu/amd_basic@query-info.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17636/fi-bwr-2160/igt@amdgpu/amd_basic@query-info.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [PASS][3] -> [{ABORT}][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17636/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_17636 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - fi-apl-guc:         [DMESG-FAIL][5] ([i915#666]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8470/fi-apl-guc/igt@i915_selftest@live@active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17636/fi-apl-guc/igt@i915_selftest@live@active.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8470 -> Patchwork_17636

  CI-20190529: 20190529
  CI_DRM_8470: d2c5ae86eac811c49f2fe22c4fa02b6e6d31cd67 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5651: e54e2642f1967ca3c488db32264607df670d1dfb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17636: d26f548aa0bd59e4dc4853eb2345620768d7fd9a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d26f548aa0bd drm/i915/ehl: Restrict w/a 1607087056 for EHL/JSL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17636/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
