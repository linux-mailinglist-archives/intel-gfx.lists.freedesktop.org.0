Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2588A1D96D6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 14:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83EB06E323;
	Tue, 19 May 2020 12:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2001D6E328;
 Tue, 19 May 2020 12:59:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19F26A47E0;
 Tue, 19 May 2020 12:59:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 12:59:26 -0000
Message-ID: <158989316607.31239.5208540963272508864@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200516132444.24007-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200516132444.24007-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Measure_CS=5FTIMESTAMP_=28rev3=29?=
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

Series: drm/i915/selftests: Measure CS_TIMESTAMP (rev3)
URL   : https://patchwork.freedesktop.org/series/77320/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8502 -> Patchwork_17708
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17708 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17708, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17708/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17708:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_pm:
    - fi-elk-e7500:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8502/fi-elk-e7500/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17708/fi-elk-e7500/igt@i915_selftest@live@gt_pm.html
    - fi-ilk-650:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8502/fi-ilk-650/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17708/fi-ilk-650/igt@i915_selftest@live@gt_pm.html
    - fi-bwr-2160:        [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8502/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17708/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_17708 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-guc:         [INCOMPLETE][7] ([i915#656]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8502/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17708/fi-cfl-guc/igt@i915_selftest@live@execlists.html

  
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (50 -> 44)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8502 -> Patchwork_17708

  CI-20190529: 20190529
  CI_DRM_8502: 5bafb3de802a8dd663009250b587c1a78ad298c9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5659: 66ab5e42811fee3dea8c21ab29e70e323a0650de @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17708: 4686c52345011560c020f375436eea7fcb31fbae @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4686c5234501 drm/i915/selftests: Measure CS_TIMESTAMP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17708/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
