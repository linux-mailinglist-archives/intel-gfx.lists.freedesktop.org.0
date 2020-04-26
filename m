Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 482A21B8F22
	for <lists+intel-gfx@lfdr.de>; Sun, 26 Apr 2020 12:50:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 346376E2B2;
	Sun, 26 Apr 2020 10:50:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 84D7D6E29B;
 Sun, 26 Apr 2020 10:50:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2D40CA432F;
 Sun, 26 Apr 2020 10:50:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 26 Apr 2020 10:50:35 -0000
Message-ID: <158789823515.14660.8228906324123405674@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200426094231.21995-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200426094231.21995-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/execlists=3A_Check_preempt-timeout_target_before_submit?=
 =?utf-8?q?=5Fports?=
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

Series: drm/i915/execlists: Check preempt-timeout target before submit_ports
URL   : https://patchwork.freedesktop.org/series/76490/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8369 -> Patchwork_17466
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17466/index.html

Known issues
------------

  Here are the changes found in Patchwork_17466 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-whl-u:           [PASS][1] -> [DMESG-FAIL][2] ([i915#1791])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/fi-whl-u/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17466/fi-whl-u/igt@i915_selftest@live@gt_pm.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-whl-u:           [PASS][3] -> [FAIL][4] ([fdo#103375])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/fi-whl-u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17466/fi-whl-u/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_contexts:
    - fi-bwr-2160:        [INCOMPLETE][5] ([i915#1726] / [i915#489]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17466/fi-bwr-2160/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@gt_pm:
    - fi-hsw-4770:        [DMESG-FAIL][7] ([i915#1791]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8369/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17466/fi-hsw-4770/igt@i915_selftest@live@gt_pm.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#1726]: https://gitlab.freedesktop.org/drm/intel/issues/1726
  [i915#1791]: https://gitlab.freedesktop.org/drm/intel/issues/1791
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (48 -> 40)
------------------------------

  Missing    (8): fi-hsw-4200u fi-skl-guc fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-icl-y fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8369 -> Patchwork_17466

  CI-20190529: 20190529
  CI_DRM_8369: ed7a286b5d02de0eb72f46665f2d6accce20a179 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5610: 71fed15724898a8f914666093352a964b70a62fc @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17466: bdd857ec216386541d16ec0204f6597345b75e13 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bdd857ec2163 drm/i915/execlists: Check preempt-timeout target before submit_ports

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17466/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
