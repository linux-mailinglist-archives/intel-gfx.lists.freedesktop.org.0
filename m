Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3661C1C06A2
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 21:40:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8462F6E48B;
	Thu, 30 Apr 2020 19:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 731926E489;
 Thu, 30 Apr 2020 19:40:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B8CAA432F;
 Thu, 30 Apr 2020 19:40:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Apr 2020 19:40:51 -0000
Message-ID: <158827565141.31918.2446571369632800307@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430183324.23984-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200430183324.23984-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Keep_a_reference_to_module_while_active?=
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

Series: drm/i915/pmu: Keep a reference to module while active
URL   : https://patchwork.freedesktop.org/series/76779/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8402 -> Patchwork_17530
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17530/index.html

Known issues
------------

  Here are the changes found in Patchwork_17530 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8402/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17530/fi-bwr-2160/igt@i915_selftest@live@gt_pm.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [FAIL][3] ([i915#976]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8402/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17530/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [SKIP][5] ([fdo#109271]) -> [FAIL][6] ([i915#62])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8402/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17530/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8402 -> Patchwork_17530

  CI-20190529: 20190529
  CI_DRM_8402: b34c04ed51aaaab63716e7491db86c83aab4e095 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5618: 9a94fb4b5ebb82185fb52a1709366458597a62ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17530: 18e8c538bd2efa06a6622a012dd2eb86d823c2a5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

18e8c538bd2e drm/i915/pmu: Keep a reference to module while active

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17530/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
