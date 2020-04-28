Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0091BD09B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 01:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8172B6E9E0;
	Tue, 28 Apr 2020 23:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9A8D56E9D8;
 Tue, 28 Apr 2020 23:32:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93C5EA011A;
 Tue, 28 Apr 2020 23:32:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arnd Bergmann" <arnd@arndb.de>
Date: Tue, 28 Apr 2020 23:32:10 -0000
Message-ID: <158811673058.17772.2672767795689157889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200428213106.3139170-1-arnd@arndb.de>
In-Reply-To: <20200428213106.3139170-1-arnd@arndb.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_unused_scale=5Fuser=5Fto=5Fhw=28=29_warning?=
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

Series: drm/i915: avoid unused scale_user_to_hw() warning
URL   : https://patchwork.freedesktop.org/series/76682/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8388 -> Patchwork_17501
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17501 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17501, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17501/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17501:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17501/fi-bsw-nick/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_17501 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-bsw-nick:        [PASS][2] -> [INCOMPLETE][3] ([i915#1250])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-bsw-nick/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17501/fi-bsw-nick/igt@debugfs_test@read_all_entries.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - fi-glk-dsi:         [INCOMPLETE][4] ([i915#58] / [k.org#198133]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8388/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17501/fi-glk-dsi/igt@i915_selftest@live@gt_pm.html

  
  [i915#1250]: https://gitlab.freedesktop.org/drm/intel/issues/1250
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (48 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8388 -> Patchwork_17501

  CI-20190529: 20190529
  CI_DRM_8388: 12346af5b9d3ccf046d5e736c02851eec98e49ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17501: e8779770fe300190626f57fc3f6e78c48ef23a03 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e8779770fe30 drm/i915: avoid unused scale_user_to_hw() warning

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17501/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
