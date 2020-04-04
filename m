Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DFB19E679
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Apr 2020 18:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 282026E24D;
	Sat,  4 Apr 2020 16:42:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 92B926E23D;
 Sat,  4 Apr 2020 16:42:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8BA86A47E6;
 Sat,  4 Apr 2020 16:42:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Sat, 04 Apr 2020 16:42:53 -0000
Message-ID: <158601857354.1392.10196999483663321697@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200404150508.111056-1-andi@etezian.org>
In-Reply-To: <20200404150508.111056-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_move_remaining_debugfs_interfaces_into_gt_=28rev5?=
 =?utf-8?q?=29?=
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

Series: drm/i915/gt: move remaining debugfs interfaces into gt (rev5)
URL   : https://patchwork.freedesktop.org/series/75333/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8254 -> Patchwork_17212
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/index.html

Known issues
------------

  Here are the changes found in Patchwork_17212 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-blb-e6850:       [DMESG-WARN][1] ([i915#1612]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html

  * {igt@gem_wait@busy@all}:
    - fi-kbl-soraka:      [FAIL][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/fi-kbl-soraka/igt@gem_wait@busy@all.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/fi-kbl-soraka/igt@gem_wait@busy@all.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [SKIP][5] ([fdo#109271]) -> [PASS][6] +24 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8254/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1612]: https://gitlab.freedesktop.org/drm/intel/issues/1612


Participating hosts (50 -> 44)
------------------------------

  Additional (1): fi-byt-n2820 
  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8254 -> Patchwork_17212

  CI-20190529: 20190529
  CI_DRM_8254: 48a3176bdce701e44ccba0fbdf3497b0dae3ae48 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5563: 7ab7807727262b7ed7e12197b78e867287a17ef6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17212: b1842893326e6694c5f47ecef02030daadc756bb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b1842893326e drm/i915/gt: move remaining debugfs interfaces into gt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17212/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
